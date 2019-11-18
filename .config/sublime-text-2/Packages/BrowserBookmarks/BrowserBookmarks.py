import json, os, subprocess, webbrowser, sys
import sublime_plugin, sublime

# python check
if sys.version_info[0] >= 3:
    import urllib.parse as urlparse
else:
    import urlparse

VERBOSE = 0

def log(message,verbose=1):
    '''print a message with verbose limit
    '''
    if verbose <= VERBOSE:
        print('%s:%s' % (verbose, message) )

def browse_to(url):
    '''go to specific url
    '''
    webbrowser.open_new_tab(url)
    # subprocess.Popen(['iceweasel','-new-tab',url])

class Bookmark(object):
    '''bookmark base functionality
    '''
    def __init__(self, dataDict=None):
        self._dataDict = dataDict
        self._name    = None
        self._type     = None
        self._url      = None
        self._parent   = None
        self._children = []

    def parent(self):
        '''get parent
        '''
        return self._parent
    
    def setParent(self, value):
        '''set parent
        '''
        self._parent = value
    
    def dataDict(self):
        ''' get self._dataDict
        '''
        return self._dataDict
    
    def setDataDict(self, value):
        ''' set self._dataDict
        '''
        self._dataDict = value
    
    def type(self):
        ''' get self._type
        '''
        return self._type
    
    def setType(self, value):
        ''' set self._type
        '''
        self._type = value
    
    def url(self):
        ''' get self._url
        '''
        return self._url
    
    def setUrl(self, value):
        ''' set self._url
        '''
        self._url = value
    
    def name(self):
        '''get name
        '''
        return self._name
    
    def setName(self, value):
        '''set name
        '''
        self._name = value
    
    def children(self):
        '''get children
        '''
        return self._children
    
    def setChildren(self, value):
        '''set children
        '''
        self._children = value

    def grandParents(self):
        '''return all grandParents
        '''
        grandParents = []
        parent = self.parent()
        if parent:
            grandParents.append(parent)
            grandParents += parent.grandParents()

        return grandParents

    def grandChildren(self):
        grandChildren = []
        childs = self.children()

        for child in childs:
            grandChildren.append(child)
            subchilds = child.grandChildren()
            grandChildren += subchilds

        return grandChildren
    
class BookmarkFirefox(Bookmark):
    '''bookmark of firefox
    '''
    def type(self):
        dataDict = self.dataDict()
        return dataDict['type']

    def name(self):
        dataDict = self.dataDict()
        return dataDict['title']  

    def url(self):
        dataDict = self.dataDict()
        if 'uri' not in dataDict:
            return None

        return dataDict['uri']        

    def grandChildren(self):
        grandChildren = []
        childs = self.children()

        for child in childs:
            grandChildren.append(child)
            subchilds = child.grandChildren()
            grandChildren += subchilds

        return grandChildren

    def children(self):
        dataDict = self.dataDict()
        if 'children' not in dataDict:
            return []

        childs = dataDict['children']
        children = []
        for child in childs:
            childBookmark = BookmarkFirefox(child)
            childBookmark.setParent(self)
            children.append(childBookmark)

        return children

class BookmarkChrome(Bookmark):
    '''bookmark of chrome
    '''
    def __init__(self, dataDict):
        super(BookmarkChrome, self).__init__(dataDict)
        self._dataDict = dataDict

    def dataDict(self):
        '''get dataDict
        '''
        return self._dataDict
    
    def setDataDict(self, value):
        '''set dataDict
        '''
        self._dataDict = value

    def type(self):
        dataDict = self.dataDict()
        return dataDict['type']

    def name(self):
        dataDict = self.dataDict()
        return dataDict['name']  

    def url(self):
        dataDict = self.dataDict()
        if 'url' not in dataDict:
            return None

        return dataDict['url']        

    def children(self):
        dataDict = self.dataDict()
        if 'children' not in dataDict:
            return []

        childs = dataDict['children']
        children = []
        for child in childs:
            childBookmark = BookmarkChrome(child)
            childBookmark.setParent(self)
            children.append(childBookmark)

        return children

class BookmarksManager(object):
    '''base manager of bookmarks
    '''
    def __init__(self,settings=None):
        self._settings = settings

    def settings(self):
        '''get settings
        '''
        return self._settings
    
    def setSettings(self, value):
        '''set settings
        '''
        self._settings = value

    def error(self, message):
        print('Error : %s' % message)
    
class BookmarksFirefox(BookmarksManager):
    '''bookmarks manager of firefox
    '''
    def get_bookmark_urls():
        # root = "/home/sven.fr/.mozilla/firefox/5ssz988r.default/bookmarkbackups"
        jsonFileNames = os.listdir(root)
        jsonFileNames.sort()
        filePath = os.path.join( root, jsonFileNames[-1])
        log(filePath)
        
        # filePath = '/home/sven.fr/.mozilla/firefox/5ssz988r.default/bookmarkbackups/bookmarks-2014-03-21.json'
        fs = open(filePath,'r')
        rootBookmark = json.load(fs)
        fs.close()

        # bookmarks = json.dumps(rootBookmark, sort_keys=True ,ensure_ascii=True ,indent=4)
        # print(bookmarks)
        bm = BookMark(rootBookmark)
        childs = bm.grandChildren()
        log('childs=%s' % len(childs), 6)

        returnList = []

        for child in childs:
            url = child.url()
            if url:
                if url.find('place') != -1:
                    continue

            title = child.title()
            if not title or title == '':
                parsed_url = urlparse.urlparse( url )
                domain = '{uri.scheme}://{uri.netloc}/'.format(uri=parsed_url)
                domain = domain.replace('http://','')
                domain = domain.replace('https://','')
                domain = domain.replace('/','')
                log(domain)
                title = domain

            if uri:
                returnList.append( [title, uri] )
            

        return returnList

    def _findBookmarkbackups(self):
        bookmarkBackupsDirectory = self.settings().get("firefox-bookmarkbackups-directory")

        if bookmarkBackupsDirectory:
            return bookmarkBackupsDirectory

        profilename = self.settings().get("firefox-profile")
        appData = os.getenv('APPDATA')
        log('appData=%s' % appData, 6)

        profilesDir = os.path.join(appData, 'Mozilla', 'Firefox', 'Profiles')
        profileDirname = None

        if not os.path.exists(profilesDir):
            self.error("firefox profile directory does not exist '%s'" % profilesDir)
            return

        for name in  os.listdir(profilesDir):
            if name.find(profilename) != -1:
                profileDirname = name

        log('profileDirname=%s' % profileDirname, 6)

        if profileDirname is None:
            self.error("no firefox profile found %s" % profilename,1)
            return []

        bookmarkBackupDirectory = os.path.join(profilesDir , profileDirname, 'bookmarkbackups')
        log('bookmarkBackupDirectory=%s' % bookmarkBackupDirectory, 6)

        return bookmarkBackupDirectory
        
    def _findJsonFilepath(self):
        '''return the filepath to the json file
        '''
        bookmarkBackupDirectory = self._findBookmarkbackups()

        if not os.path.exists(bookmarkBackupDirectory):
            self.error("bookmarkBackupDirectory does not exist '%s'" % bookmarkFile)
            return

        backupfiles = os.listdir(bookmarkBackupDirectory)

        if len(backupfiles) == 0:
            self.error("no backup bookmark files found in %s" % bookmarkBackupDirectory)
            return

        backupfiles.sort()
        backupFilename = backupfiles[-1]
        backupFilePath = os.path.join(bookmarkBackupDirectory, backupFilename)

        log('backupFilePath=%s' % backupFilePath, 6)
        return backupFilePath

    def bookmarks(self):
        '''return all bookmarks from firefox
        '''
        bookmarkFile = self._findJsonFilepath()

        if bookmarkFile is None:
            return []

        rootBookmark = None
        try:
            fs = open(bookmarkFile,'r')
            rootBookmark = json.load(fs)
            fs.close()
        except:
            self.error("could not open file '%s'" % bookmarkFile)
            return []

        # bookmarks = json.dumps(rootBookmark, sort_keys=True ,ensure_ascii=True ,indent=4)
        # print(bookmarks)
        bm = BookmarkFirefox(rootBookmark)
        childs = bm.grandChildren()
        log('childs=%s' % len(childs), 6)

        returnList = []

        for child in childs:
            url = child.url()
            if url:
                if url.find('place') != -1:
                    continue
            log('url=%s' % url, 6)
            title = child.name()
            if (not title or title == '') and url is not None:
                parsed_url = urlparse.urlparse( url )
                domain = '{uri.scheme}://{uri.netloc}/'.format(uri=parsed_url)
                domain = domain.replace('http://','')
                domain = domain.replace('https://','')
                domain = domain.replace('/','')
                log(domain)
                title = domain

            if url:
                returnList.append( child )
            

        return returnList

        return []

class BookmarksChrome(BookmarksManager):
    '''bookmark manager of chrome
    '''
    def _findJsonFilepath(self):
        bookmarksFile = self.settings().get("chrome-bookmarks-file")
        log('bookmarksFile=%s' % bookmarksFile, 6)
        if bookmarksFile:
            if not os.path.exists(bookmarksFile):
                self.error("chrome bookmarks file does not exist %s" % bookmarksFile)
                return

            return bookmarksFile

        localAppData = os.getenv('LOCALAPPDATA')
        bookmarks = os.path.join(localAppData, 'Google', 'Chrome', 'User Data', 'Default', 'bookmarks')

        if os.path.exists(bookmarks):
            return bookmarks
        else:
            self.error("chrome bookmarks file does not exist %s" % bookmarks)


    def bookmarks(self):
        '''return all bookmarks from the manager
        '''
        bookmarks = self._findJsonFilepath()
        if bookmarks is None:
            return []

        # bookmarks = r'C:\Users\sven\AppData\Local\Google\Chrome\User Data\Default\bookmarks'
        fs = open(bookmarks, 'r')
        dataDict = json.load(fs)
        fs.close()

        bookmarks = []
        for root in dataDict['roots']:
            rootDict = dataDict['roots'][root]
            log('type(root)=%s' % type(root), 6)
            if type(rootDict) != dict:
                continue

            bookmark = BookmarkChrome(rootDict)

            bookmarks.append(bookmark)

            bookmarks += bookmark.grandChildren()

        return bookmarks

class ShowBookmarksCommand(sublime_plugin.WindowCommand):
    '''sublime show bookmarks command
    '''
    def settings(self):
        '''return if the fold getters and setters is active or not
        '''
        settings = sublime.load_settings("BrowserBookmarks.sublime-settings")
        return settings

    def collectBookmarks(self):
        '''get all bookmarks from active browsers
        '''
        returnBookmarks = []
        settings = self.settings()

        chromeOn = settings.get("chrome")
        firefoxOn = settings.get("firefox")

        log('chromeOn=%s' % chromeOn, 6)
        log('firefoxOn=%s' % firefoxOn, 6)
        
        # chrome
        if chromeOn is True:
            chrome = BookmarksChrome(settings)
            bookmarks = chrome.bookmarks()

            if len(bookmarks) == 0:
                print("Warning : Chrome returned zero bookmarks but is active in the system")

            for bookmark in bookmarks:
                if bookmark.type() != 'folder':
                    returnBookmarks.append(bookmark)

        # firefox
        if firefoxOn is True:
            firefox = BookmarksFirefox(settings)
            bookmarks = firefox.bookmarks()

            if len(bookmarks) == 0:
                print("Warning : Firefox returned zero bookmarks but is active in the system")

            for bookmark in bookmarks:
                if bookmark.type() != 'folder':
                    returnBookmarks.append(bookmark)

        

        return returnBookmarks

    def handleHelpSelect(self, index):
        '''open the current project
        '''
        log('index=%s' % index, 6)

        if index == -1:
            return
        
        bookmarks = self.collectBookmarks()
        bookmark = bookmarks[index]
        uri = bookmark.url()
        browse_to( uri )

    def run(self):
        '''start the sublime process
        '''
        quickPanelData = []
        bookmarks = self.collectBookmarks()
        log('bookmarks=%s' % bookmarks, 6)


        for bookmark in bookmarks:
            title = bookmark.name()
            url = bookmark.url()
            title = bookmark.name()
            subTitle = bookmark.url()

            parsed_url = urlparse.urlparse( url )
            domain = '{uri.scheme}://{uri.netloc}/'.format(uri=parsed_url)

            # construct nez title if empty
            if not title or title == '':
                parsed_url = urlparse.urlparse( url )
                domain = '{uri.scheme}://{uri.netloc}/'.format(uri=parsed_url)
                domain = domain.replace('http://','')
                domain = domain.replace('https://','')
                domain = domain.replace('/','')
                log(domain)
                title = domain

            parents = bookmark.grandParents()

            hierarchy = None
            if len(parents) > 0:
                parents.reverse()
                blacklist = [None,'']
                hierarchy = '>'.join ( [parent.name() for parent in parents] )

            displayList = [title]


            if hierarchy:
                displayList.append('%s' % (hierarchy) )

            log('hierarchy=%s' % hierarchy, 6)
            quickPanelData.append ( displayList )

        log('quickPanelData=%s' % quickPanelData, 6)

        sublime.active_window().show_quick_panel(quickPanelData, self.handleHelpSelect)

        return

# get_bookmark_urls()


# chrome = BookmarksChrome()
# for bookmark in chrome.bookmarks():
#     print(bookmark.grandParents())
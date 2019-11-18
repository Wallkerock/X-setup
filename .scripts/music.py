import subprocess, os, time

out = subprocess.check_output(['ps', '-x'])
out = str(out)[2:-3]

if out.find('foobnix') != -1:
	out = subprocess.check_output(['foobnix', '--state'])
	out = str(out)[2:-3]

	if out == 'STOP':
		print('No music is playing')
	elif out == 'PLAY':
		out = subprocess.check_output(['foobnix', '--now-playing'])
		out = str(out)[2:-3]
		print('►  ' + out)
	elif out == 'PAUSE':
		out = subprocess.check_output(['foobnix', '--now-playing'])
		out = str(out)[2:-3]
		print('▍▍  ' + out)
else:
print('No music player')

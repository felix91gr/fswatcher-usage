import FileSystemWatcher

var eventCount : Int

eventCount = 0

func printEvent(event: FileSystemEvent) {
	print("Hey! Something happened!!")

	//FIXME: make event.name be read from the C API
	//print("Event name: " + event.name)
	eventCount += 1
}


print("Starting!")

let myWatcher = FileSystemWatcher()

myWatcher.watch(
	paths: ["/tmp"], 
	for: [FileSystemEventType.inAllEvents],
	thenInvoke: printEvent)


myWatcher.start()

readLine()

myWatcher.stop()

print("Total number of events: " + String(eventCount))

print("Finished!")
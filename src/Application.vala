public class MyApp : Gtk.Application {

	public MyApp () {
		Object(
				application_id: "github.com/BiedermannJoerg/MyApp.git",
				flags: ApplicationFlags.FLAGS_NONE);
	}

	protected override void activate () {
		// Create the window of this application and show it
		var main_window = new Gtk.ApplicationWindow (this);
		main_window.default_height = 300;
		main_window.default_width = 300;
		main_window.title = "My Gtk.Application";

		var button_hello = new Gtk.Button.with_label ("Click me!");
		button_hello.margin = 12;
		button_hello.clicked.connect (() => {
    	button_hello.label = "Hello World!";
    	button_hello.sensitive = false;
		});


		main_window.add (button_hello);
		main_window.show_all ();
		// Gtk.Label label = new Gtk.Label ("Hello, GTK");
		//window.add (label);
		//window.show_all ();
	}

	public static int main (string[] args) {
		var app = new MyApp ();
		return app.run (args);
	}
}

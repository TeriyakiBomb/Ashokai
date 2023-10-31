struct Food {
    name: String,
    deliciousness: i32,
}

impl Food {
    fn new(name: &str, deliciousness: i32) -> Food {
        Food {
            name: name.to_string(),
            deliciousness,
        }
    }

    fn tell_joke(&self) {
        println!("Why did the lollipop go to the art gallery?", self.name);
        println!("Because it heard there was a lot of 'tasteful' art!");
    }
}

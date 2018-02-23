pub mod first {
    #[derive(Debug)]
    pub struct user {
        pub name: String,
        pub age: i32,
    }
    impl user {
        fn new(&self) -> user {
            user {
                name: String::from("dalong"),
                age: 333,
            }
        }
    }
    pub mod second {
        #[derive(Debug)]
        pub struct user2 {
            pub name2: String,
            pub age2: i32,
        }
        impl user2 {
            fn new(&self) -> user2 {
                user2 {
                    name2: String::from("dalong"),
                    age2: 333,
                }
            }
        }
    }

}

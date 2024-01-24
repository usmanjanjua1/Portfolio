class MyProjects {
  String image = '';
  String title = '';
  String desc = '';
  String videoLink = '';
  MyProjects(this.image, this.title, this.desc, this.videoLink);
}

List<MyProjects> myProjects = [
  MyProjects(
      "https://i.postimg.cc/LsFm04Kv/mobile-shopping.png",
      'Ecommerce Mobile App',
      'Online Store to buy Apple Products, The User creates an ID through Email and can buy gadgets easily. All store Data and Login details are fetched through Firebase',
      'https://firebasestorage.googleapis.com/v0/b/data-to-host.appspot.com/o/portfolio%20data%2Fscreen-20231002-221405~2.mp4?alt=media&token=43be9ded-83ed-4ddf-a0fb-4262dff3bccd'),
  MyProjects("https://i.ibb.co/74W2Z58/movie.png", 'Movies App',
      'An app to watch movies online', ''),
  MyProjects(
      "https://i.postimg.cc/rpQ4fD3C/notes.png",
      'Notes Keeping App',
      'An app to keep record of notes saved in account memory performing CRUD operations',
      ''),
  MyProjects("https://i.ibb.co/9N1GFdy/motherboard.png", 'Home Automation',
      'Did Home Electric appliances automation using Arduino', ''),
  MyProjects("https://i.ibb.co/jrTNHw6/chat.png", 'Chat App',
      'Online Chat App with firebase realtime database With Login/Signup', ''),
  MyProjects(
      "https://i.ibb.co/VL73JPm/joystick.png",
      'Kids Game',
      'Unity based game to collect data of children\'s progress as he completes tasks',
      ''),
];

Scratcher.delete_all
Scratcher.create(name:'Perfect Scratcher Brand', description:'This is very good for all types of problems', size:'XL', price:20.99)
Scratcher.create(name:'Handy Sct', description:'A nice scratcher but not as efficient', size:'L', price:20.99)
User.delete_all
User.create(username:'tester1', email:'tester@bigtest.com', password_digest: BCrypt::Password.create('test123'))
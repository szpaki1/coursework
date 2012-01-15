# By using the symbol ':new', we get Factory Girl to simulate the New model.
Factory.define :new do |new|
  new.title                  "News title"
  new.content                 "News content"
  new.photo              "News photo"
end

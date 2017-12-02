
10.times do |d|
MicroserviceDocument.create!(
  title: "Document #{d}",
  description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
  file_url: "https://docs.google.com/document/d/1y0RWGxLuZy3rveWeCQVGtAZrQhQnfHWT7l5J6trL3Y8/edit?usp=sharing",
  image_url: "https://upload.wikimedia.org/wikipedia/commons/2/20/Services4.png"
)
end

#set page(
  paper: "a4",
  margin: (x: 0.5in, y: 0.5in),
)

#set text(
  font: "Liberation Serif",
  size: 11pt,
  lang: "en",
)

// --- Macros for formatting ---

#let resume_heading(body) = {
  set text(size: 14pt, weight: "bold")
  upper(body)
  v(-0.8em)
  line(length: 100%, stroke: 1pt + black)
  v(0.4em)
}

#let edu_item(school, degree, location, date) = {
  grid(
    columns: (1fr, auto),
    row-gutter: 0.4em, // Spacing between School line and Degree line
    strong(school), align(right)[#location],
    emph(degree), align(right)[#emph(date)],
  )
  v(0.5em)
}

#let exp_item(role, company, location, date, details) = {
  grid(
    columns: (1fr, auto),
    row-gutter: 0.4em, // Spacing between Role line and Company line
    strong(role), align(right)[#location],
    emph(company), align(right)[#emph(date)],
  )
  set text(size: 10.5pt)
  list(marker: [•], ..details)
  v(0.5em)
}

#let project_item(name, tech, details) = {
  pad(bottom: -0.2em)[
    *#name* | #emph(tech)
  ]
  set text(size: 10.5pt)
  list(marker: [•], ..details)
  v(0.4em)
}

#let skill_item(category, skills) = {
  pad(bottom: 0.2em)[
    *#category*: #skills
  ]
}

// --- Content Starts Here ---

#align(center)[
  #text(size: 20pt, weight: "bold")[Musaddique Ali] \
  #v(0.3em)
  Nazira, Sivasagar, Assam, India - 785685 #h(0.5em) $|$ #h(0.5em) +91-6003095404 #h(0.5em) $|$ #h(0.5em) musaddiquecodes\@gmail.com \
  #v(0.1em)
  https://github.com/gitmusaddique #h(0.5em) $|$ #h(0.5em) https://www.linkedin.com/in/musaddique-ali-16336727b/
]

#v(0.5em)

// --- Education ---
#resume_heading[Education]

#edu_item(
  "Parul University",
  "Bachelor of Technology in Computer Science & Engineering (AI)",
  "Vadodara, Gujarat, India",
  "2022 -- 2025"
)

#edu_item(
  "A.Y. Dadabhai Technical Institute",
  "Diploma in Computer Engineering",
  "Kosamba, Gujarat, India",
  "2019 -- 2022"
)

// --- Experience ---
#resume_heading[Experience]

#exp_item(
  "Artificial Intelligence Intern",
  "YBI Foundation",
  "Remote",
  "Nov 2024 -- Feb 2025",
  (
    [Developed a deep learning model for handwritten text detection utilizing the ResNet50 architecture, achieving high accuracy in character recognition.],
    [Curated and pre-processed a custom dataset of handwriting samples to train and validate the model effectively.],
    [Implemented data augmentation techniques to improve model generalization and robustness against varied handwriting styles.],
  )
)

// --- Projects ---
#resume_heading[Projects]

#project_item(
  "Marketplace REST API",
  "C, Jansson, Ulfius, SQLite3, Nginx, cURL",
  (
    [Architected a high-performance RESTful API in C for a general e-commerce marketplace, utilizing the Ulfius framework for endpoint management.],
    [Integrated SQLite3 for lightweight, persistent data storage to manage product inventory and transaction records reliably.],
    [Implemented robust JSON parsing and serialization using the Jansson library to ensure efficient data exchange.],
    [Configured Nginx as a reverse proxy server to handle load balancing and enhance security for API requests.],
    [Validated all API endpoints thoroughly using cURL scripts to ensure reliability and correct HTTP status code handling.],
  )
)

#project_item(
  "Linux System Dashboard",
  "C, Raylib, Raygui",
  (
    [Engineered a lightweight graphical system monitor for Linux environments using C and the Raylib library.],
    [Integrated Raygui to design a responsive user interface that visualizes real-time system metrics.],
    [Implemented low-level system calls to fetch and display critical data such as RAM usage, Disk I/O, and Laptop Battery status.],
  )
)

// --- Technical Skills ---
#resume_heading[Technical Skills]

#skill_item("Languages", "C, C++, Python, SQL (SQLite)")
#skill_item("Frameworks & Libraries", "Raylib, Raygui, Ulfius, Jansson, ResNet50, PyTorch/TensorFlow, Pandas")
#skill_item("Developer Tools", "Git, GitHub, Vim, VS Code, Nginx, cURL, Linux")
#skill_item("Concepts", "REST APIs, Machine Learning, Data Structures & Algorithms, System Monitoring")

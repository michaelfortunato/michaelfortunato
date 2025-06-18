#import "@preview/basic-resume:0.2.3": *
// typst init @preview/imprecv:1.0.1

// Put your personal information here, replacing mine
#let name = "Michael Newman Fortunato"
#let location = "Chicago, IL"
#let email = "michael.n.fortunato@gmail.com"
#let github = "github.com/michaelfortunato"
#let linkedin = "linkedin.com/in/stuxf"
#let phone = "+1 (917) 373 3628"
#let personal-site = "michaelfortunato.dev"


#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  // linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: center,
  personal-info-position: center,
)

== Education <subsec:Education>

#edu(
  institution: "The University of Chicago",
  location: "Chicago, IL",
  dates: dates-helper(start-date: "Sep 2016", end-date: "June 2020"),
  degree: "Bachelors's of Science, Mathematics",
)
- _Major GPA: 3.51/4.00, Cumulative GPA: 3.33/4.00_

#edu(
  institution: "The University of Chicago",
  location: "Chicago, IL",
  dates: dates-helper(start-date: "Sep 2024", end-date: "Dec 2025 (Expected)"),
  degree: "Masters of Science, Computer Science",
)
- _ Cumulative GPA: 3.85/4.00_
- _Pre-Doctoral Program_ #footnote[Highly selective program. As part of the program, _all_ courses are PhD (CMSC 300) level courses, _not_ masters-level courses (MPSC). https://masters.cs.uchicago.edu/academics/pre-doctoral-ms-computer-science]

== Experience <subsec:Experience>
#work(
  title: "Senior Systems Developer - Kernel Group",
  location: "Cambridge, MA",
  company: "Intersystems",
  dates: dates-helper(start-date: "June 2023", end-date: "July 2024"),
)
- more bullet points go here

#work(
  title: "Senior Application Developer",
  location: "Cambridge, MA",
  company: "Intersystems",
  dates: dates-helper(start-date: "June 2020", end-date: "July 2023"),
)

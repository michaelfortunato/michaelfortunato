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
  // linkedin: linkedin,
  // phone: phone,
  // personal-site: personal-site,
  // WARN: HACK to get website first
  phone: [#link(personal-site)[#personal-site]],
  // personal-site: personal-site,
  github: phone,
  personal-site: github,
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
  dates: dates-helper(start-date: "Sep 2024", end-date: "Dec 2025 (Expected)"),
  degree: "Masters of Science, Computer Science",
)
- _ Cumulative GPA: 3.95/4.00_
- _Pre-Doctoral Program_ #footnote[*Highly selective* program (in 2024, 120
    regular admissions, 4 pre-doctoral admissions) meant to prepare students
    for a PhD. As part of the program, _all_ courses are PhD (CMSC 300) level
    courses, _not_ masters-level courses (MPSC).
    https://masters.cs.uchicago.edu/academics/pre-doctoral-ms-computer-science]


#edu(
  institution: "The University of Chicago",
  location: "Chicago, IL",
  dates: dates-helper(start-date: "Sep 2016", end-date: "June 2020"),
  degree: "Bachelors's of Science, Mathematics",
)
- _Major GPA: 3.51/4.00, Cumulative GPA: 3.33/4.00_



#let work(
  title: "",
  dates: "",
  company: "",
  location: "",
) = {
  generic-two-by-two(
    top-left: strong(company),
    top-right: emph(location),
    bottom-left: title,
    bottom-right: dates,
  )
}

== Work Experience <subsec:Work-Experience>
#work(
  title: [_ Senior Systems Developer - Kernel Group _],
  location: "Cambridge, MA",
  company: "InterSystems",
  dates: dates-helper(start-date: "July 2023", end-date: "July 2024"),
)
- Due to veritable performance in our company's healthcare department, I was
  transferred to become one of the youngest ever members of InterSystem's
  "Kernel group". This is the group of around 12 developers responsible for
  architecting, implementing, and researching the IRIS database, which is
  InterSystem's core technology and is the database powering companies such as
  Epic Systems and Morgan Stanley.
- _Compiler Work_:
  - Developed and improved the performance of ObjectScript, a strongly-typed
    byte-code language (most similar to Java) that is executed within the IRIS
    runtime
  - Improving the speed and modularity of the ObjectScript lexer and parser
  - Conceived of optimizing passes that the ObjectScript compiler could perform
- _Networking_:
  - I wrote the SSH daemon for the IRIS database from scratch in Rust.
    Subsystems dealt with and created included:
    - Read and implemented all the SSH RFCs faithfully for the IRIS daemon
    - Multithreaded, async I/O done with low level usage of #link(
        "https://github.com/tokio-rs/mio",
      )[Mio] and higher level
      #link("https://github.com/tokio-rs/tokio")[Tokio]
      primitives.
    - Full Authentication Layer (Public Key, Password, Key phrase) with UI and
      distributed systems logic, which was done in consultation with security
      team.
    - All terminal escape sequences implemented (e.g. reverse incremental
      search), which was done via termios and ioctl.
- Wrote in C, assembly, and Rust

#generic-one-by-two(
  left: [_Senior Developer_ #footnote([Promoted from Developer to Senior
      Developer April 2022])],
  right: dates-helper(start-date: "July 2020", end-date: "July 2023"),
)
- Conceived of, architected, and built the Data Profiling Tool, an enterprise
  grade application for analyzing millions of HL7v2 messages. The application
  included full-stack SSO user authentication, multi-threading, and complex
  scheduling and concurrency management features, along with advanced data
  analytics algorithms with a emphasis on performance acceptable to users
  needs. Technologies included:
  - Solely designed and built database (SQL), manufactured bitmap indexes, NLP
    indexes, and considered normalization layouts verses computation layouts.
  - Built the REST API, working closely with a principal UI developer assigned
    to this project part-time.
  - Created and wrote new _highly performant_ algorithms for analyzing
    production grade amounts of HL7v2 data, in both real-time and offline
    settings.
- Put on special 1-person team to research the cost of on-boarding new
  hospitals into InterSystems' technology, in order to propose a software
  solution and build that solution. The Data Profiling Tool was the end-result
  of this work.
- Mentored 7 developers. Two of the developers are now technical leads of the
  Data Profiling Tool, the other 5 developers are now working for other various
  companies such as Samsung.

== Research Experience <subsec:Research-Experience>

#work(
  company: "Yale Univeristy",
  title: [_Undergraduate Research Assistant to Professor John Lafferty_],
  dates: dates-helper(end-date: "September 2019", start-date: "June 2019"),
  location: [New Haven, CT],
)
- Helped design and build new techniques for estimating joint distributions on
  data with both discrete and continuous components.
- Helped theorize and implement a method that uses Score Matching (Siwei Lyu,
  2009) for joint density estimation, and a second method that used Monotonic
  Neural Density Estimation (Pawel Chilinksi & Ricardo Silva, 2018) for
  estimating the conditions and a Gaussian Copula for linking.
- Demonstrated our work by inferencing the estimating joint distribution to
  generate synthetic data.

#work(
  company: "Univeristy of Chicago Booth School of Business",
  title: [Lead Undergraduate Researcher to Professor William Cong and Tengyuan
    Liang],
  dates: dates-helper(start-date: "January 2018", end-date: "June 2020"),
)

- Lead undergraduate researcher for a team that developed an influential
  algorithm called Textual Factors (Cong, Liang, Lin, 2019), resulting in a
  published paper.
- Important contributor to the development and implementation of the algorithm,
  which uses natural language processing to measure the semantics of a large
  corpus of financial articles (30GB), and then uses statistics to associate
  that measurement with a given share price.
- Received honorable mention for significant contributions in the published
  paper, despite not being listed as an author due to the graduate author
  focus.

== Awards <subsec:Awards>

#generic-one-by-two(
  left: [
    *Dean's List*
  ],
  right: [University of Chicago (2019)],
)

#generic-two-by-two(
  top-left: [*Data Profiling Tool*],
  bottom-left: [
    _Voted "Most Exciting and Likely To Use Technology" By Customers At
    InterSystems Global Summit_
  ],
  top-right: [InterSystems (July 2023)],
  bottom-right: "",
)

== Courses <subsec:Courses>

- CMSC 35410, Machine Learning on Graph, Groups, and Manifolds (Risi Kondor),
  A-
- CMSC 35400, Deep Learning in 3D (Rana Hanocka), A-
- CMSC 35300, Mathematical Foundations of Machine Learning, A-
- CMSC 33300, Advanced Operating Systems, A
- STAT 28000, Optimization, A,
- STAT 24500, Statistical Theorey II, A
- MATH 28100, Introduction To Complexity Theory, A
- CMSC 27200, Algorithms, A
- MATH 25500, Basic Algebra II, A




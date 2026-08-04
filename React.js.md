# React.js Complete Interview Questions & Answers (25 Topics)

## 1. Introduction to React

### Q1: What is React?

**Answer:**
React is an open-source JavaScript library used for building user interfaces, especially Single Page Applications (SPAs). It follows a component-based architecture and uses a Virtual DOM for efficient updates.

### Q2: What are the advantages of React?

**Answer:**

* Reusable Components
* Virtual DOM
* One-way Data Flow
* Better Performance
* Easy Testing
* Large Community Support

### Q3: What is Virtual DOM?

**Answer:**
Virtual DOM is a lightweight copy of the Real DOM. React compares the previous and updated Virtual DOM and updates only the changed parts of the Real DOM.
117742992370
---

## 2. React JSX Syntax

### Q1: What is JSX?

**Answer:**
JSX (JavaScript XML) is a syntax extension that allows writing HTML-like code inside JavaScript.

### Q2: Can browsers understand JSX directly?

**Answer:**
No. JSX is transpiled into JavaScript by Babel before execution.

### Q3: Why use JSX?

**Answer:**

* Easier to read
* Looks like HTML
* Better developer experience
* Faster UI development

---

## 3. Components and Props

### Q1: What is a Component?

**Answer:**
A component is an independent and reusable piece of UI in React.

### Q2: What are Props?

**Answer:**
Props (Properties) are read-only inputs passed from parent components to child components.

### Q3: Can Props be modified?

**Answer:**
No. Props are immutable and cannot be modified by the receiving component.

---

## 4. State Management

### Q1: What is State?

**Answer:**
State is data managed within a component that can change over time.

### Q2: Why use State?

**Answer:**
State allows React to update the UI whenever data changes.

### Q3: Difference between State and Props?

**Answer:**

| Props            | State                |
| ---------------- | -------------------- |
| Read-only        | Mutable              |
| Passed by Parent | Managed by Component |
| External Data    | Internal Data        |

---

## 5. Handling Events

### Q1: How are events handled in React?

**Answer:**
React uses event handlers such as `onClick`, `onChange`, and `onSubmit`.

### Q2: What is a Synthetic Event?

**Answer:**
A Synthetic Event is React's wrapper around native browser events for cross-browser compatibility.

### Q3: Why use event handlers?

**Answer:**
To respond to user interactions such as clicks, typing, and form submissions.

---

## 6. Conditional Rendering

### Q1: What is Conditional Rendering?

**Answer:**
Displaying different UI elements based on conditions.

### Q2: Which methods can be used?

**Answer:**

* if-else
* Ternary Operator
* Logical AND (`&&`)

### Q3: Why use Conditional Rendering?

**Answer:**
To show or hide components based on application state.

---

## 7. Lists and Keys

### Q1: Why are Keys important?

**Answer:**
Keys help React identify changed, added, or removed elements efficiently.

### Q2: Can we use index as a Key?

**Answer:**
Yes, but it is not recommended for dynamic lists.

### Q3: What happens if Keys are missing?

**Answer:**
React may re-render inefficiently and produce UI inconsistencies.

---

## 8. React Hooks

### Q1: What are Hooks?

**Answer:**
Hooks allow functional components to use React features such as state and lifecycle methods.

### Q2: What is useState?

**Answer:**
A Hook used to add and manage state in functional components.

### Q3: What is useEffect?

**Answer:**
A Hook used to perform side effects like API calls and event listeners.

---

## 9. Context API

### Q1: What is Context API?

**Answer:**
A React feature used for sharing data globally without prop drilling.

### Q2: What is Prop Drilling?

**Answer:**
Passing data through multiple intermediate components unnecessarily.

### Q3: When should Context API be used?

**Answer:**
For themes, authentication, language settings, and shared application state.

---

## 10. Working with Forms

### Q1: What is a Controlled Component?

**Answer:**
A form element whose value is controlled by React state.

### Q2: What is an Uncontrolled Component?

**Answer:**
A form element managed directly by the DOM using refs.

### Q3: Why use Controlled Components?

**Answer:**
For better control, validation, and state synchronization.

---

## 11. Making HTTP Requests

### Q1: What is Fetch API?

**Answer:**
A built-in browser API used for making HTTP requests.

### Q2: What is Axios?

**Answer:**
A third-party library used for making HTTP requests with additional features.

### Q3: Difference between Fetch and Axios?

**Answer:**

| Fetch                | Axios                   |
| -------------------- | ----------------------- |
| Built-in             | External Library        |
| Manual JSON Parsing  | Automatic JSON Parsing  |
| Basic Error Handling | Advanced Error Handling |

---

## 12. Component Lifecycle Methods

### Q1: What are Lifecycle Methods?

**Answer:**
Methods that execute during different phases of a component's life.

### Q2: What are the lifecycle phases?

**Answer:**

* Mounting
* Updating
* Unmounting

### Q3: Which Hook replaces Lifecycle Methods?

**Answer:**
`useEffect()`

---

## 13. React Router

### Q1: What is React Router?

**Answer:**
A library used for client-side routing in React applications.

### Q2: Difference between Link and anchor tag?

**Answer:**

* Link: No page reload
* Anchor Tag: Full page reload

### Q3: What is useNavigate?

**Answer:**
A Hook used for programmatic navigation.

---

## 14. Custom Hooks

### Q1: What is a Custom Hook?

**Answer:**
A reusable JavaScript function that starts with `use` and uses React Hooks.

### Q2: Why use Custom Hooks?

**Answer:**
To share reusable logic between components.

### Q3: Naming convention for Custom Hooks?

**Answer:**
They must start with the word `use`.

---

## 15. React.memo

### Q1: What is React.memo?

**Answer:**
A Higher Order Component that prevents unnecessary component re-renders.

### Q2: When should React.memo be used?

**Answer:**
For performance optimization when props rarely change.

### Q3: What does React.memo compare?

**Answer:**
Previous props and current props.

---

## 16. useMemo

### Q1: What is useMemo?

**Answer:**
A Hook that memoizes expensive calculations.

### Q2: Why use useMemo?

**Answer:**
To avoid unnecessary recalculations during re-renders.

### Q3: What does useMemo return?

**Answer:**
A memoized value.

---

## 17. useCallback

### Q1: What is useCallback?

**Answer:**
A Hook that memoizes functions.

### Q2: Why use useCallback?

**Answer:**
To prevent function recreation on every render.

### Q3: What does useCallback return?

**Answer:**
A memoized function.

---

## 18. Lazy Loading

### Q1: What is Lazy Loading?

**Answer:**
Loading components only when they are needed.

### Q2: Which React API supports Lazy Loading?

**Answer:**
`React.lazy()`

### Q3: Why use Lazy Loading?

**Answer:**
To improve initial application load time.

---

## 19. Code Splitting

### Q1: What is Code Splitting?

**Answer:**
Breaking large JavaScript bundles into smaller chunks.

### Q2: Benefits of Code Splitting?

**Answer:**

* Faster loading
* Better performance
* Improved user experience

### Q3: Difference between Code Splitting and Lazy Loading?

**Answer:**
Code Splitting creates chunks, while Lazy Loading loads them when needed.

---

## 20. Redux Toolkit

### Q1: What is Redux Toolkit?

**Answer:**
The official recommended way to write Redux logic.

### Q2: What is a Slice?

**Answer:**
A collection of Redux state and reducers.

### Q3: What are useSelector and useDispatch?

**Answer:**

* useSelector: Reads state
* useDispatch: Dispatches actions

---

## 21. TanStack Query (React Query)

### Q1: What is React Query?

**Answer:**
A library for fetching, caching, and synchronizing server state.

### Q2: Why use React Query?

**Answer:**
For caching, automatic refetching, and simplified API state management.

### Q3: Redux vs React Query?

**Answer:**
Redux manages client state, React Query manages server state.

---

## 22. Authentication & Protected Routes

### Q1: What is Authentication?

**Answer:**
The process of verifying a user's identity.

### Q2: What is JWT?

**Answer:**
JSON Web Token used for secure authentication.

### Q3: What is a Protected Route?

**Answer:**
A route accessible only to authenticated users.

---

## 23. Performance Optimization

### Q1: How can React performance be optimized?

**Answer:**

* React.memo
* useMemo
* useCallback
* Lazy Loading
* Code Splitting

### Q2: What causes unnecessary re-renders?

**Answer:**
State updates, prop changes, and function recreations.

### Q3: What is Virtualization?

**Answer:**
Rendering only visible items in large lists.

---

## 24. React Project Folder Structure

### Q1: Why use a structured folder architecture?

**Answer:**
For maintainability and scalability.

### Q2: What folders are commonly used?

**Answer:**

* components
* pages
* hooks
* services
* store
* utils

### Q3: Benefits of feature-based structure?

**Answer:**
Improved organization and team collaboration.

---

## 25. Testing with Jest & React Testing Library

### Q1: What is Jest?

**Answer:**
A JavaScript testing framework.

### Q2: What is React Testing Library?

**Answer:**
A library for testing React components based on user interactions.

### Q3: What types of testing exist?

**Answer:**

* Unit Testing
* Integration Testing
* End-to-End Testing

---

# Final React Interview Revision Questions

1. What is React and why is it used?
2. Explain Virtual DOM.
3. Difference between Props and State.
4. What are Hooks?
5. Explain useState and useEffect.
6. What is Context API?
7. What is React Router?
8. What are Custom Hooks?
9. What is React.memo?
10. Difference between useMemo and useCallback?
11. What is Lazy Loading?
12. What is Code Splitting?
13. Explain Redux Toolkit.
14. Explain React Query.
15. What are Protected Routes?
16. How do you optimize React performance?
17. What is Prop Drilling?
18. Controlled vs Uncontrolled Components?
19. Difference between Fetch and Axios?
20. Explain Component Lifecycle.
21. What is a Slice in Redux?
22. What is JWT Authentication?
23. What is Virtualization?
24. How should a React project be structured?
25. How do you test React applications?

## Table of Contents

- [EASY (Q1–Q20)](#easy-q1q20)
- [MEDIUM (Q21–Q40)](#medium-q21q40)
- [HARD (Q41–Q60)](#hard-q41q60)

---

# EASY (Q1–Q20)

## Q1. What is React?

React is an open-source JavaScript library developed by Facebook for building fast, interactive, and reusable user interfaces using components.

---

## Q2. What are the main features of React?

- Component-Based Architecture
- Virtual DOM
- JSX (JavaScript XML)
- One-Way Data Binding
- Reusable Components
- Hooks
- Efficient Rendering
- Strong Community Support

---

## Q3. What is JSX?

JSX (JavaScript XML) is a syntax extension for JavaScript that allows developers to write HTML-like code inside JavaScript.

```jsx
const element = <h1>Hello React</h1>;
```

---

## Q4. How is JSX different from HTML?

| JSX | HTML |
|------|------|
| Uses `className` | Uses `class` |
| Uses `htmlFor` | Uses `for` |
| Supports JavaScript expressions using `{}` | Does not support JavaScript expressions |
| Must return a single parent element | No such restriction |

---

## Q5. What is a Component in React?

A Component is a reusable and independent piece of UI that contains its own structure, logic, and behavior. Components help divide the application into smaller manageable parts.

---

## Q6. Functional Components vs Class Components?

| Functional Component | Class Component |
|---------------------|----------------|
| Uses Hooks | Uses Lifecycle Methods |
| Less Boilerplate | More Boilerplate |
| Easier to Read | More Complex |
| Preferred in Modern React | Mostly Legacy |

---

## Q7. What are Props in React?

Props (Properties) are read-only values passed from a parent component to a child component. They allow components to communicate and share data.

---

## Q8. What is State in React?

State is a built-in object used to store data that can change over time within a component. Whenever state changes, React re-renders the component.

---

## Q9. Props vs State?

| Props | State |
|---------|---------|
| Passed by Parent | Managed by Component |
| Read-only | Mutable |
| External Data | Internal Data |
| Cannot be Modified | Can be Updated |

---

## Q10. What is Virtual DOM?

Virtual DOM is a lightweight copy of the Real DOM maintained in memory by React. React compares changes in the Virtual DOM and updates only the necessary parts of the Real DOM for better performance.

---

## Q11. What are Hooks in React?

Hooks are special functions introduced in React 16.8 that allow functional components to use state, lifecycle methods, and other React features without using class components.

---

## Q12. Why were Hooks introduced?

- Use state in functional components
- Reuse logic between components
- Reduce class component complexity
- Improve code readability and maintainability

---

## Q13. What are the Rules of Hooks?

1. Only call Hooks at the top level.
2. Only call Hooks inside React functional components or custom Hooks.
3. Never call Hooks inside loops, conditions, or nested functions.

---

## Q14. Explain useState Hook.

`useState` is a Hook used to add state to functional components.

```jsx
const [count, setCount] = useState(0);
```

- `count` → Current state value
- `setCount` → Function to update state

---

## Q15. Why are state updates asynchronous?

React batches multiple state updates together to improve performance and reduce unnecessary re-renders. This process makes state updates appear asynchronous.

---

## Q16. Explain useEffect Hook.

`useEffect` is used to perform side effects in functional components.

Common uses: API calls, event listeners, timers, DOM manipulation.

```jsx
useEffect(() => {
  // side effect
}, []);
```

---

## Q17. What is the Dependency Array in useEffect?

The dependency array controls when the effect executes.

```jsx
useEffect(() => {}, []);       // Runs once after initial render
useEffect(() => {}, [count]);  // Runs whenever `count` changes
useEffect(() => {});           // Runs after every render
```

---

## Q18. What is the Cleanup Function in useEffect?

A cleanup function runs before the component unmounts or before the effect executes again.

```jsx
useEffect(() => {
  return () => {
    // cleanup code
  };
}, []);
```

Used for removing event listeners, clearing timers, cancelling subscriptions.

---

## Q19. Explain useRef Hook.

`useRef` creates a mutable reference that persists across renders without causing re-renders.

```jsx
const inputRef = useRef(null);
```

Common uses: accessing DOM elements, storing previous values, avoiding unnecessary re-renders.

---

## Q20. What is useContext Hook?

`useContext` allows components to consume values from a Context without manually passing props.

```jsx
const value = useContext(MyContext);
```

It helps avoid prop drilling.

---

# MEDIUM (Q21–Q40)

## Q21. What is Reconciliation in React?

Reconciliation is the process React uses to compare the old Virtual DOM with the new Virtual DOM and determine the minimum updates required in the Real DOM.

---

## Q22. What are Synthetic Events in React?

Synthetic Events are React's wrapper around native browser events. They provide a consistent event handling mechanism across all browsers.

```jsx
<button onClick={handleClick}>Click Me</button>
```

---

## Q23. What are Controlled Components?

Controlled Components are form elements whose values are controlled by React State. React becomes the single source of truth for the form data.

---

## Q24. What are Keys in React?

Keys are special attributes used to uniquely identify elements in a list. They help React efficiently update and manage list items.

```jsx
users.map(user => (
  <li key={user.id}>{user.name}</li>
))
```

---

## Q25. useState vs useReducer?

| useState | useReducer |
|-----------|------------|
| Simple State | Complex State |
| Easy to Use | More Structured |
| Less Boilerplate | Better for Multiple State Changes |

---

## Q26. useMemo vs useCallback?

| useMemo | useCallback |
|----------|------------|
| Memoizes Value | Memoizes Function |
| Returns Computed Result | Returns Function |
| Optimizes Expensive Calculations | Optimizes Function References |

---

## Q27. What is React.memo?

`React.memo` is a Higher Order Component that prevents unnecessary re-rendering when props have not changed.

```jsx
export default React.memo(Component);
```

---

## Q28. What are Custom Hooks?

Custom Hooks are reusable JavaScript functions that contain React Hook logic.

```jsx
function useCounter() {
  const [count, setCount] = useState(0);
  return { count, setCount };
}
```

---

## Q29. What is Prop Drilling?

Prop Drilling occurs when props are passed through multiple component levels just to reach a deeply nested component.

```text
App → Parent → Child → GrandChild
```

---

## Q30. How can Context API solve Prop Drilling?

Context API provides data directly to components without passing props through intermediate levels.

Benefits: cleaner code, easier state sharing, reduced prop passing.

---

## Q31. What is React Router?

React Router is a library used for navigation between different pages or components in a React application without reloading the browser.

```bash
npm install react-router-dom
```

---

## Q32. What is useNavigate Hook?

`useNavigate` is a Hook used for programmatic navigation.

```jsx
const navigate = useNavigate();
navigate("/dashboard");
```

It is commonly used after login, logout, or form submission.

---

## Q33. How do you implement Protected Routes?

Protected Routes restrict access to authenticated users.

```jsx
function ProtectedRoute({ children }) {
  return isLoggedIn
    ? children
    : <Navigate to="/login" />;
}
```

---

## Q34. How do you call an API in React?

APIs are typically called using the Fetch API or Axios.

```jsx
useEffect(() => {
  fetch("/users")
    .then(res => res.json())
    .then(data => console.log(data));
}, []);
```

---

## Q35. How do you cancel API requests?

Using `AbortController`.

```jsx
const controller = new AbortController();
fetch(url, { signal: controller.signal });
controller.abort();
```

This prevents memory leaks and unnecessary updates.

---

## Q36. How do you implement Debouncing in Search?

Debouncing delays execution until the user stops typing.

```jsx
useEffect(() => {
  const timer = setTimeout(() => {
    searchApi(searchTerm);
  }, 500);

  return () => clearTimeout(timer);
}, [searchTerm]);
```

---

## Q37. What is Redux?

Redux is a predictable state management library used to manage global application state in a centralized store. It helps share data across multiple components without prop drilling.

---

## Q38. What are Actions, Reducers, and Store?

**Action** — a plain JavaScript object describing what happened.

```javascript
{ type: "INCREMENT" }
```

**Reducer** — a function that receives the current state and action and returns a new state.

**Store** — the centralized container that holds the application's state.

---

## Q39. What is createSlice()?

`createSlice()` is a Redux Toolkit function used to create state, reducers, and actions in a single place.

```javascript
const counterSlice = createSlice({
  name: "counter",
  initialState: { value: 0 },
  reducers: {
    increment: state => {
      state.value += 1;
    }
  }
});
```

---

## Q40. What is Redux Thunk?

Redux Thunk is middleware that allows actions to return functions instead of plain objects. Commonly used for API calls, async operations, and delayed dispatches.

```javascript
export const fetchUsers = () => async dispatch => {
  const data = await api.getUsers();
  dispatch(setUsers(data));
};
```

---

# HARD (Q41–Q60)

## Q41. What is React Query (TanStack Query)?

React Query (TanStack Query) is a data-fetching library used for managing server state efficiently.

Features: caching, background updates, refetching, pagination, optimistic updates.

---

## Q42. Why use React Query instead of Redux for Server State?

Redux is designed for client-side state, while React Query is designed specifically for server-side state.

Advantages: automatic caching, automatic refetching, less boilerplate, better performance.

---

## Q43. What is Caching in React Query?

Caching stores previously fetched data locally, enabling faster loading, reduced API requests, and a better user experience.

```javascript
useQuery({
  queryKey: ["users"],
  queryFn: fetchUsers
});
```

---

## Q44. What is Query Invalidation?

Query Invalidation marks cached data as outdated and triggers a refetch.

```javascript
queryClient.invalidateQueries({ queryKey: ["users"] });
```

Used after create, update, or delete operations to keep data synchronized.

---

## Q45. What is Lazy Loading?

Lazy Loading is a technique where components, modules, or resources are loaded only when they are needed instead of loading everything at the initial page load.

Benefits: faster initial load time, reduced bundle size, better performance.

---

## Q46. What is Code Splitting?

Code Splitting is the process of dividing a large JavaScript bundle into smaller chunks that can be loaded on demand. React commonly implements this using `React.lazy()` and `Suspense`.

---

## Q47. How does React.lazy work?

`React.lazy()` allows components to be loaded dynamically when required.

```jsx
const Dashboard = React.lazy(() => import("./Dashboard"));
```

The component is downloaded only when it is rendered.

---

## Q48. What is Suspense?

`Suspense` is a React component used to display fallback content while lazy-loaded components are being loaded.

```jsx
<Suspense fallback={<Loading />}>
  <Dashboard />
</Suspense>
```

---

## Q49. What causes unnecessary re-renders?

- Parent component re-rendering
- Inline functions
- Inline objects
- State updates
- Unoptimized props
- Context value changes

---

## Q50. Explain Tree Shaking.

Tree Shaking is a build optimization technique that removes unused code from the final production bundle, resulting in a smaller bundle size, faster loading, and better performance. Modern bundlers like Webpack support tree shaking.

---

## Q51. What is Webpack?

Webpack is a module bundler that processes and bundles JavaScript, CSS, images, and other assets into optimized files.

Features: bundling, code splitting, tree shaking, hot module replacement, asset optimization.

---

## Q52. What is Hydration in React?

Hydration is the process where React attaches event handlers and functionality to HTML generated on the server.

```text
Server Rendered HTML → Browser Loads HTML → React Attaches Events → Interactive Application
```

Commonly used in Server-Side Rendering (SSR).

---

## Q53. CSR vs SSR?

| CSR (Client-Side Rendering) | SSR (Server-Side Rendering) |
|----------------------------|----------------------------|
| Rendering occurs in browser | Rendering occurs on server |
| Slower initial load | Faster initial load |
| Better for SPAs | Better for SEO |
| More JavaScript required | HTML delivered immediately |

---

## Q54. What is Next.js?

Next.js is a React framework that provides Server-Side Rendering (SSR), Static Site Generation (SSG), API Routes, Routing, Image Optimization, and Performance Enhancements. It is one of the most popular React frameworks.

---

## Q55. How does React Fiber Architecture work?

React Fiber is the reconciliation engine introduced in React 16. It breaks rendering work into smaller units called Fibers, allowing React to pause, resume, and prioritize rendering work.

Benefits: better performance, smoother UI updates, support for Concurrent Rendering.

---

## Q56. What is Concurrent Rendering?

Concurrent Rendering allows React to prepare multiple UI updates simultaneously and prioritize important updates.

Features: interruptible rendering, background rendering, better responsiveness. It helps prevent the UI from becoming unresponsive during expensive operations.

---

## Q57. How does Batching work in React?

Batching is the process of combining multiple state updates into a single re-render.

```jsx
setCount(count + 1);
setName("John");
setAge(25);
```

Instead of performing three renders, React performs one render.

---

## Q58. Why are Hooks called in the same order?

React tracks Hooks based on the order in which they are called and associates each Hook with its position. Changing the order would cause React to associate state with the wrong Hook, so Hooks must always be called in the same order on every render.

---

## Q59. What are Error Boundaries?

Error Boundaries are React components that catch JavaScript errors in child component trees and display a fallback UI instead of crashing the entire application.

They help prevent application crashes, display fallback screens, log errors, and improve user experience.

---

## Q60. Explain the complete React Rendering Lifecycle.

The React Rendering Lifecycle consists of six stages:

1. **Trigger Phase** — a render is triggered by state, props, or context change.
2. **Render Phase** — React executes component functions and creates a new Virtual DOM tree.
3. **Diffing Phase** — React identifies differences between the previous and new Virtual DOM.
4. **Reconciliation Phase** — React determines the minimum changes required.
5. **Commit Phase** — React updates the Real DOM with the calculated changes.
6. **Browser Paint** — the browser renders the updated UI on the screen.

```text
State / Props Change → Render Phase → Virtual DOM → Diffing →
Reconciliation → Commit Phase → Real DOM → Browser Paint
```

This process allows React to efficiently update only the necessary parts of the UI instead of re-rendering the entire page.

---

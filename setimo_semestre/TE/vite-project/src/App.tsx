import { useState } from 'react';


function App() {
  const [name, setName] = useState("Raphael");
  const [age, setAge] = useState(1);

  const grow = () => {
    const letter = name.at(-1);
    setName((name) => `${name}${letter}`)
  }

  const increase = () => {
    setAge((age) => age++)
  }


  return <div>
    <h1>dados</h1>
    <p>Nome: <span>{name}</span></p>
    <p>Idade: <span>{age}</span></p>

    <div style={{
      display: 'flex'
    }}>
      <button onClick={grow}>Crescer</button>
      <button onClick={increase}>Aumentar</button>
    </div>
  </div>
}

export default App;

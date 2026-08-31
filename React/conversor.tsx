import { useState } from 'react';

function ConversorBinario() {
    const [decimal, setDecimal] = useState('');
    const [binario, setBinario] = useState('');

    const converter = () => {
        const num = parseInt(decimal);
        if (isNaN(num) || num < 0) {
            setBinario('Valor invalido!');
            return;
        }
        setBinario(num === 0 ? '0' : num.toString(2));
    };

    return (
        <div style={{ padding: 20, fontFamily: 'sans-serif' }}>
            <h2>Conversor Decimal → Binário</h2>
            <input
                type="number"
                value={decimal}
                onChange={(e) => setDecimal(e.target.value)}
                placeholder="Digite um numero decimal"
            />
            <button onClick={converter}>Converter</button>
            {binario && <h3>Binario: {binario}</h3>}
        </div>
    );
}

export default ConversorBinario;

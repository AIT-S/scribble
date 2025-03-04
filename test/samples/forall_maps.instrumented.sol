pragma solidity 0.8.4;

contract Foo {
    event AssertionFailed(string message);

    struct SA {
        string_to_uint256.S m;
        uint cnt;
    }

    struct SB {
        SA[] sas;
    }

    struct vars0 {
        uint256 i0;
        uint256 k0;
        bool forall_0;
    }

    struct vars1 {
        uint256 i1;
        uint256 k1;
        bool forall_1;
    }

    struct vars2 {
        uint256 i2;
        string s0;
        bool forall_2;
    }

    struct vars3 {
        uint256 i3;
        string s1;
        bool forall_3;
        uint256 i4;
        uint8 k2;
        bool forall_4;
    }

    struct vars4 {
        uint256 i5;
        uint256 k3;
        bool forall_5;
    }

    struct vars5 {
        uint256 i6;
        bool forall_6;
    }

    struct vars6 {
        uint256 i7;
        uint256 k4;
        bool forall_7;
    }

    struct vars7 {
        uint256 i8;
        string s2;
        bool forall_8;
    }

    struct vars8 {
        uint256 i9;
        uint8 x0;
        bool forall_9;
    }

    struct vars9 {
        uint256 i10;
        string s3;
        bool forall_10;
    }

    struct vars10 {
        uint256 i11;
        bool forall_11;
        uint256 i12;
        string s4;
        bool forall_12;
    }

    struct vars11 {
        uint256 i14;
        uint256 i13;
        bool forall_13;
        bool old_0;
    }

    uint256_to_uint256.S internal a;
    string_to_int16.S c0;
    string internal sS;
    string_to_uint8_to_int8_S_504.S internal d;
    uint256_to_uint256_arr.S internal e;
    mapping(uint => uint)[] internal f;
    uint256_to_uint256.S[] internal g;
    string_to_mapping_uint8_to_int8.S internal h;
    mapping(string => uint8_to_int8.S) internal i;
    SB internal j;
    uint256_to_uint256.S internal k;

    function setA(uint key, uint val) public {
        vars0 memory _v;
        _original_Foo_setA(key, val);
        unchecked {
            _v.forall_0 = true;
            for (_v.i0 = 1; _v.i0 < a.keys.length; _v.i0++) {
                _v.k0 = a.keys[_v.i0];
                _v.forall_0 = uint256_to_uint256.get(a, _v.k0) > 1;
                if (!_v.forall_0) break;
            }
            if (!(_v.forall_0)) {
                emit AssertionFailed("0: ");
                assert(false);
            }
        }
    }

    function _original_Foo_setA(uint key, uint val) private {
        uint256_to_uint256.set(a, key, val);
    }

    function decA(uint key) public {
        vars1 memory _v;
        _original_Foo_decA(key);
        unchecked {
            _v.forall_1 = true;
            for (_v.i1 = 1; _v.i1 < a.keys.length; _v.i1++) {
                _v.k1 = a.keys[_v.i1];
                _v.forall_1 = uint256_to_uint256.get(a, _v.k1) > 1;
                if (!_v.forall_1) break;
            }
            if (!(_v.forall_1)) {
                emit AssertionFailed("1: ");
                assert(false);
            }
        }
    }

    function _original_Foo_decA(uint key) private {
        uint256_to_uint256.dec(a, key);
    }

    function setC(string memory s, int16 v) public {
        vars2 memory _v;
        _original_Foo_setC(s, v);
        unchecked {
            _v.forall_2 = true;
            for (_v.i2 = 1; _v.i2 < c0.keys.length; _v.i2++) {
                _v.s0 = c0.keys[_v.i2];
                _v.forall_2 = string_to_int16.get(c0, _v.s0) > (-1);
                if (!_v.forall_2) break;
            }
            if (!(_v.forall_2)) {
                emit AssertionFailed("2: ");
                assert(false);
            }
        }
    }

    function _original_Foo_setC(string memory s, int16 v) private {
        string_to_int16.set(c0, s, v);
    }

    function setD(string memory s, uint8 k, int8 v) public {
        vars3 memory _v;
        _original_Foo_setD(s, k, v);
        unchecked {
            _v.forall_3 = true;
            for (_v.i3 = 1; _v.i3 < d.keys.length; _v.i3++) {
                _v.s1 = d.keys[_v.i3];
                _v.forall_4 = true;
                for (_v.i4 = 1; _v.i4 < string_to_uint8_to_int8_S_504.get(d, _v.s1).keys.length; _v.i4++) {
                    _v.k2 = string_to_uint8_to_int8_S_504.get(d, _v.s1).keys[_v.i4];
                    _v.forall_4 = uint8_to_int8.get(string_to_uint8_to_int8_S_504.get(d, _v.s1), _v.k2) > 0;
                    if (!_v.forall_4) break;
                }
                _v.forall_3 = _v.forall_4;
                if (!_v.forall_3) break;
            }
            if (!(_v.forall_3)) {
                emit AssertionFailed("3: ");
                assert(false);
            }
        }
    }

    function _original_Foo_setD(string memory s, uint8 k, int8 v) private {
        uint8_to_int8.set(string_to_uint8_to_int8_S_504.get_lhs(d, s), k, v);
    }

    function setE(uint k, uint[] memory v) public {
        vars4 memory _v;
        _original_Foo_setE(k, v);
        unchecked {
            _v.forall_5 = true;
            for (_v.i5 = 1; _v.i5 < e.keys.length; _v.i5++) {
                _v.k3 = e.keys[_v.i5];
                _v.forall_5 = uint256_to_uint256_arr.get(e, _v.k3).length > 0;
                if (!_v.forall_5) break;
            }
            if (!(_v.forall_5)) {
                emit AssertionFailed("4: ");
                assert(false);
            }
        }
    }

    function _original_Foo_setE(uint k, uint[] memory v) private {
        uint256_to_uint256_arr.set(e, k, v);
    }

    function pushF() public {
        f.push();
    }

    function setF(uint i, uint j, uint v) public {
        vars5 memory _v;
        _original_Foo_setF(i, j, v);
        unchecked {
            _v.forall_6 = true;
            for (_v.i6 = 0; _v.i6 < f.length; _v.i6++) {
                _v.forall_6 = f[_v.i6][0] > 0;
                if (!_v.forall_6) break;
            }
            if (!(_v.forall_6)) {
                emit AssertionFailed("5: ");
                assert(false);
            }
        }
    }

    function _original_Foo_setF(uint i, uint j, uint v) private {
        f[i][j] = v;
    }

    function pushG() public {
        g.push();
    }

    function setG(uint i, uint j, uint v) public {
        vars6 memory _v;
        _original_Foo_setG(i, j, v);
        unchecked {
            _v.forall_7 = true;
            for (_v.i7 = 1; _v.i7 < g[i].keys.length; _v.i7++) {
                _v.k4 = g[i].keys[_v.i7];
                _v.forall_7 = uint256_to_uint256.get(g[i], _v.k4) > 0;
                if (!_v.forall_7) break;
            }
            if (!(_v.forall_7)) {
                emit AssertionFailed("6: ");
                assert(false);
            }
        }
    }

    function _original_Foo_setG(uint i, uint j, uint v) private {
        uint256_to_uint256.set(g[i], j, v);
    }

    function setH(string memory s, uint8 k, int8 v) public {
        vars7 memory _v;
        _original_Foo_setH(s, k, v);
        unchecked {
            _v.forall_8 = true;
            for (_v.i8 = 1; _v.i8 < h.keys.length; _v.i8++) {
                _v.s2 = h.keys[_v.i8];
                _v.forall_8 = string_to_mapping_uint8_to_int8.get(h, _v.s2)[0] > 0;
                if (!_v.forall_8) break;
            }
            if (!(_v.forall_8)) {
                emit AssertionFailed("7: ");
                assert(false);
            }
        }
    }

    function _original_Foo_setH(string memory s, uint8 k, int8 v) private {
        string_to_mapping_uint8_to_int8.get_lhs(h, s)[k] = v;
    }

    function setI(string memory s, uint8 k, int8 v) public {
        vars8 memory _v;
        _original_Foo_setI(s, k, v);
        unchecked {
            _v.forall_9 = true;
            for (_v.i9 = 1; _v.i9 < i[s].keys.length; _v.i9++) {
                _v.x0 = i[s].keys[_v.i9];
                _v.forall_9 = uint8_to_int8.get(i[s], _v.x0) > 0;
                if (!_v.forall_9) break;
            }
            if (!(_v.forall_9)) {
                emit AssertionFailed("8: ");
                assert(false);
            }
        }
    }

    function _original_Foo_setI(string memory s, uint8 k, int8 v) private {
        uint8_to_int8.set(i[s], k, v);
    }

    function addSA() public {
        j.sas.push();
    }

    function setJ(uint saI, string memory x, uint v) public {
        vars9 memory _v;
        _original_Foo_setJ(saI, x, v);
        unchecked {
            _v.forall_10 = true;
            for (_v.i10 = 1; _v.i10 < j.sas[saI].m.keys.length; _v.i10++) {
                _v.s3 = j.sas[saI].m.keys[_v.i10];
                _v.forall_10 = string_to_uint256.get(j.sas[saI].m, _v.s3) > 0;
                if (!_v.forall_10) break;
            }
            if (!(_v.forall_10)) {
                emit AssertionFailed("9: ");
                assert(false);
            }
        }
    }

    function _original_Foo_setJ(uint saI, string memory x, uint v) private {
        string_to_uint256.set(j.sas[saI].m, x, v);
    }

    function setJ2(uint saI, string memory x, uint v) public {
        vars10 memory _v;
        _original_Foo_setJ2(saI, x, v);
        unchecked {
            _v.forall_11 = true;
            for (_v.i11 = 0; _v.i11 < j.sas.length; _v.i11++) {
                _v.forall_12 = true;
                for (_v.i12 = 1; _v.i12 < j.sas[_v.i11].m.keys.length; _v.i12++) {
                    _v.s4 = j.sas[_v.i11].m.keys[_v.i12];
                    _v.forall_12 = string_to_uint256.get(j.sas[_v.i11].m, _v.s4) > 0;
                    if (!_v.forall_12) break;
                }
                _v.forall_11 = _v.forall_12;
                if (!_v.forall_11) break;
            }
            if (!(_v.forall_11)) {
                emit AssertionFailed("10: ");
                assert(false);
            }
        }
    }

    function _original_Foo_setJ2(uint saI, string memory x, uint v) private {
        string_to_uint256.set(j.sas[saI].m, x, v);
    }

    function setK(uint i, uint v) public {
        uint256_to_uint256.set(k, i, v);
    }

    function setK1(uint i, uint v) public {
        vars11 memory _v;
        unchecked {
            _v.forall_13 = true;
            for (_v.i14 = 1; _v.i14 < k.keys.length; _v.i14++) {
                _v.i13 = k.keys[_v.i14];
                _v.old_0 = uint256_to_uint256.get(k, _v.i13) > 0;
                _v.forall_13 = _v.old_0;
                if (!_v.forall_13) break;
            }
        }
        _original_Foo_setK1(i, v);
        unchecked {
            if (!(_v.forall_13)) {
                emit AssertionFailed("11: ");
                assert(false);
            }
        }
    }

    function _original_Foo_setK1(uint i, uint v) private {
        uint256_to_uint256.set(k, i, v);
    }

    function dummy() private {
        /// Make sure direct references to renamed state var are updated correctly
        c0;
    }

    function c(string memory ARG_0) public view returns (int16 RET_0) {
        return string_to_int16.get(c0, ARG_0);
    }
}

/// Utility contract holding a stack counter
contract __scribble_ReentrancyUtils {
    bool __scribble_out_of_contract = true;
}

library string_to_uint256 {
    struct S {
        mapping(string => uint256) innerM;
        string[] keys;
        mapping(string => uint256) keyIdxM;
        uint256 sum;
    }

    function addKey(S storage m, string memory key) private {
        uint idx = m.keyIdxM[key];
        if (idx == 0) {
            if (m.keys.length == 0) {
                m.keys.push();
            }
            m.keyIdxM[key] = m.keys.length;
            m.keys.push(key);
        }
    }

    function removeKey(S storage m, string memory key) private {
        uint256 idx = m.keyIdxM[key];
        if (idx == 0) return;
        if (idx != (m.keys.length - 1)) {
            string storage lastKey = m.keys[m.keys.length - 1];
            m.keys[idx] = lastKey;
            m.keyIdxM[lastKey] = idx;
        }
        m.keys.pop();
        delete m.keyIdxM[key];
    }

    function set(S storage m, string memory key, uint256 val) internal returns (uint256) {
        unchecked {
            m.sum -= m.innerM[key];
            m.sum += val;
        }
        m.innerM[key] = val;
        addKey(m, key);
        return m.innerM[key];
    }

    function get(S storage m, string memory key) internal view returns (uint256) {
        return m.innerM[key];
    }
}

library uint8_to_int8 {
    struct S {
        mapping(uint8 => int8) innerM;
        uint8[] keys;
        mapping(uint8 => uint256) keyIdxM;
        int256 sum;
    }

    function addKey(S storage m, uint8 key) private {
        uint idx = m.keyIdxM[key];
        if (idx == 0) {
            if (m.keys.length == 0) {
                m.keys.push();
            }
            m.keyIdxM[key] = m.keys.length;
            m.keys.push(key);
        }
    }

    function removeKey(S storage m, uint8 key) private {
        uint256 idx = m.keyIdxM[key];
        if (idx == 0) return;
        if (idx != (m.keys.length - 1)) {
            uint8 lastKey = m.keys[m.keys.length - 1];
            m.keys[idx] = lastKey;
            m.keyIdxM[lastKey] = idx;
        }
        m.keys.pop();
        delete m.keyIdxM[key];
    }

    function set(S storage m, uint8 key, int8 val) internal returns (int8) {
        unchecked {
            m.sum -= m.innerM[key];
            m.sum += val;
        }
        m.innerM[key] = val;
        addKey(m, key);
        return m.innerM[key];
    }

    function get(S storage m, uint8 key) internal view returns (int8) {
        return m.innerM[key];
    }
}

library uint256_to_uint256 {
    struct S {
        mapping(uint256 => uint256) innerM;
        uint256[] keys;
        mapping(uint256 => uint256) keyIdxM;
        uint256 sum;
    }

    function addKey(S storage m, uint256 key) private {
        uint idx = m.keyIdxM[key];
        if (idx == 0) {
            if (m.keys.length == 0) {
                m.keys.push();
            }
            m.keyIdxM[key] = m.keys.length;
            m.keys.push(key);
        }
    }

    function removeKey(S storage m, uint256 key) private {
        uint256 idx = m.keyIdxM[key];
        if (idx == 0) return;
        if (idx != (m.keys.length - 1)) {
            uint256 lastKey = m.keys[m.keys.length - 1];
            m.keys[idx] = lastKey;
            m.keyIdxM[lastKey] = idx;
        }
        m.keys.pop();
        delete m.keyIdxM[key];
    }

    function set(S storage m, uint256 key, uint256 val) internal returns (uint256) {
        unchecked {
            m.sum -= m.innerM[key];
            m.sum += val;
        }
        m.innerM[key] = val;
        addKey(m, key);
        return m.innerM[key];
    }

    function dec(S storage m, uint256 key) internal returns (uint256 RET) {
        RET = m.innerM[key];
        set(m, key, m.innerM[key] - 1);
    }

    function get(S storage m, uint256 key) internal view returns (uint256) {
        return m.innerM[key];
    }
}

library string_to_int16 {
    struct S {
        mapping(string => int16) innerM;
        string[] keys;
        mapping(string => uint256) keyIdxM;
        int256 sum;
    }

    function addKey(S storage m, string memory key) private {
        uint idx = m.keyIdxM[key];
        if (idx == 0) {
            if (m.keys.length == 0) {
                m.keys.push();
            }
            m.keyIdxM[key] = m.keys.length;
            m.keys.push(key);
        }
    }

    function removeKey(S storage m, string memory key) private {
        uint256 idx = m.keyIdxM[key];
        if (idx == 0) return;
        if (idx != (m.keys.length - 1)) {
            string storage lastKey = m.keys[m.keys.length - 1];
            m.keys[idx] = lastKey;
            m.keyIdxM[lastKey] = idx;
        }
        m.keys.pop();
        delete m.keyIdxM[key];
    }

    function set(S storage m, string memory key, int16 val) internal returns (int16) {
        unchecked {
            m.sum -= m.innerM[key];
            m.sum += val;
        }
        m.innerM[key] = val;
        addKey(m, key);
        return m.innerM[key];
    }

    function get(S storage m, string memory key) internal view returns (int16) {
        return m.innerM[key];
    }
}

library string_to_uint8_to_int8_S_504 {
    struct S {
        mapping(string => uint8_to_int8.S) innerM;
        string[] keys;
        mapping(string => uint256) keyIdxM;
    }

    function addKey(S storage m, string memory key) private {
        uint idx = m.keyIdxM[key];
        if (idx == 0) {
            if (m.keys.length == 0) {
                m.keys.push();
            }
            m.keyIdxM[key] = m.keys.length;
            m.keys.push(key);
        }
    }

    function removeKey(S storage m, string memory key) private {
        uint256 idx = m.keyIdxM[key];
        if (idx == 0) return;
        if (idx != (m.keys.length - 1)) {
            string storage lastKey = m.keys[m.keys.length - 1];
            m.keys[idx] = lastKey;
            m.keyIdxM[lastKey] = idx;
        }
        m.keys.pop();
        delete m.keyIdxM[key];
    }

    function get_lhs(S storage m, string memory key) internal returns (uint8_to_int8.S storage) {
        addKey(m, key);
        return m.innerM[key];
    }

    function get(S storage m, string memory key) internal view returns (uint8_to_int8.S storage) {
        return m.innerM[key];
    }
}

library uint256_to_uint256_arr {
    struct S {
        mapping(uint256 => uint256[]) innerM;
        uint256[] keys;
        mapping(uint256 => uint256) keyIdxM;
    }

    function addKey(S storage m, uint256 key) private {
        uint idx = m.keyIdxM[key];
        if (idx == 0) {
            if (m.keys.length == 0) {
                m.keys.push();
            }
            m.keyIdxM[key] = m.keys.length;
            m.keys.push(key);
        }
    }

    function removeKey(S storage m, uint256 key) private {
        uint256 idx = m.keyIdxM[key];
        if (idx == 0) return;
        if (idx != (m.keys.length - 1)) {
            uint256 lastKey = m.keys[m.keys.length - 1];
            m.keys[idx] = lastKey;
            m.keyIdxM[lastKey] = idx;
        }
        m.keys.pop();
        delete m.keyIdxM[key];
    }

    function set(S storage m, uint256 key, uint256[] memory val) internal returns (uint256[] storage) {
        m.innerM[key] = val;
        addKey(m, key);
        return m.innerM[key];
    }

    function get(S storage m, uint256 key) internal view returns (uint256[] storage) {
        return m.innerM[key];
    }
}

library string_to_mapping_uint8_to_int8 {
    struct S {
        mapping(string => mapping(uint8 => int8)) innerM;
        string[] keys;
        mapping(string => uint256) keyIdxM;
    }

    function addKey(S storage m, string memory key) private {
        uint idx = m.keyIdxM[key];
        if (idx == 0) {
            if (m.keys.length == 0) {
                m.keys.push();
            }
            m.keyIdxM[key] = m.keys.length;
            m.keys.push(key);
        }
    }

    function removeKey(S storage m, string memory key) private {
        uint256 idx = m.keyIdxM[key];
        if (idx == 0) return;
        if (idx != (m.keys.length - 1)) {
            string storage lastKey = m.keys[m.keys.length - 1];
            m.keys[idx] = lastKey;
            m.keyIdxM[lastKey] = idx;
        }
        m.keys.pop();
        delete m.keyIdxM[key];
    }

    function get_lhs(S storage m, string memory key) internal returns (mapping(uint8 => int8) storage) {
        addKey(m, key);
        return m.innerM[key];
    }

    function get(S storage m, string memory key) internal view returns (mapping(uint8 => int8) storage) {
        return m.innerM[key];
    }
}

pragma solidity 0.8.7;

contract Foo {
    event AssertionFailed(string message);

    struct vars0 {
        uint256 i0;
        address a0;
        bool forall_0;
        uint256 i1;
        string s0;
        bool forall_1;
    }

    struct vars1 {
        uint256 i3;
        uint256 i2;
        bool forall_2;
    }

    uint256_to_uint256.S internal m;
    address_to_string_to_uint256_S_68.S internal m1;

    function assign_m(uint pos, uint v) public returns (uint) {
        Foo_m_uint256_uint256_set(pos, v);
        return uint256_to_uint256.get(m, pos);
    }

    function assign_m1(address a, string memory s, uint v) public returns (uint RET_0) {
        vars0 memory _v;
        RET_0 = _original_Foo_assign_m1(a, s, v);
        unchecked {
            _v.forall_0 = true;
            for (_v.i0 = 1; _v.i0 < m1.keys.length; _v.i0++) {
                _v.a0 = m1.keys[_v.i0];
                _v.forall_1 = true;
                for (_v.i1 = 1; _v.i1 < address_to_string_to_uint256_S_68.get(m1, _v.a0).keys.length; _v.i1++) {
                    _v.s0 = address_to_string_to_uint256_S_68.get(m1, _v.a0).keys[_v.i1];
                    _v.forall_1 = string_to_uint256.get(address_to_string_to_uint256_S_68.get(m1, _v.a0), _v.s0) > 1;
                    if (!_v.forall_1) break;
                }
                _v.forall_0 = _v.forall_1;
                if (!_v.forall_0) break;
            }
            if (!(_v.forall_0)) {
                emit AssertionFailed("5: ");
                assert(false);
            }
        }
    }

    function _original_Foo_assign_m1(address a, string memory s, uint v) private returns (uint) {
        Foo_m1_idx_address_ptr_string_memory_uint256_set(a, s, v);
        return string_to_uint256.get(address_to_string_to_uint256_S_68.get(m1, a), s);
    }

    function Foo_m_uint256_uint256_set(uint256 ARG0, uint256 ARG1) internal {
        vars1 memory _v;
        uint256_to_uint256.set(m, ARG0, ARG1);
        unchecked {
            _v.forall_2 = true;
            for (_v.i3 = 1; _v.i3 < m.keys.length; _v.i3++) {
                _v.i2 = m.keys[_v.i3];
                _v.forall_2 = uint256_to_uint256.get(m, _v.i2) > 0;
                if (!_v.forall_2) break;
            }
            if (!(_v.forall_2)) {
                emit AssertionFailed("0: ");
                assert(false);
            }
        }
    }

    function Foo_m1_idx_address_ptr_string_memory_uint256_set(address ARG2, string memory ARG3, uint256 ARG4) internal {
        string_to_uint256.set(address_to_string_to_uint256_S_68.get_lhs(m1, ARG2), ARG3, ARG4);
        unchecked {
            if (!(string_to_uint256.get(address_to_string_to_uint256_S_68.get(m1, address(0x0)), "abcd") < 5)) {
                emit AssertionFailed("1: ");
                assert(false);
            }
            if (!(ARG2 == address(0x0))) {
                emit AssertionFailed("4: ");
                assert(false);
            }
        }
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

    function get(S storage m, uint256 key) internal view returns (uint256) {
        return m.innerM[key];
    }
}

library address_to_string_to_uint256_S_68 {
    struct S {
        mapping(address => string_to_uint256.S) innerM;
        address[] keys;
        mapping(address => uint256) keyIdxM;
    }

    function addKey(S storage m, address key) private {
        uint idx = m.keyIdxM[key];
        if (idx == 0) {
            if (m.keys.length == 0) {
                m.keys.push();
            }
            m.keyIdxM[key] = m.keys.length;
            m.keys.push(key);
        }
    }

    function removeKey(S storage m, address key) private {
        uint256 idx = m.keyIdxM[key];
        if (idx == 0) return;
        if (idx != (m.keys.length - 1)) {
            address lastKey = m.keys[m.keys.length - 1];
            m.keys[idx] = lastKey;
            m.keyIdxM[lastKey] = idx;
        }
        m.keys.pop();
        delete m.keyIdxM[key];
    }

    function get_lhs(S storage m, address key) internal returns (string_to_uint256.S storage) {
        addKey(m, key);
        return m.innerM[key];
    }

    function get(S storage m, address key) internal view returns (string_to_uint256.S storage) {
        return m.innerM[key];
    }
}

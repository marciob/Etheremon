// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/* Autogenerated file. Do not edit manually. */

// Import schema type
import { SchemaType } from "@latticexyz/schema-type/src/solidity/SchemaType.sol";

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { Schema, SchemaLib } from "@latticexyz/store/src/Schema.sol";
import { PackedCounter, PackedCounterLib } from "@latticexyz/store/src/PackedCounter.sol";

uint256 constant _tableId = uint256(bytes32(abi.encodePacked(bytes16(""), bytes16("MapConfig"))));
uint256 constant MapConfigTableId = _tableId;

library MapConfig {
  /** Get the table's schema */
  function getSchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](3);
    _schema[0] = SchemaType.UINT32;
    _schema[1] = SchemaType.UINT32;
    _schema[2] = SchemaType.BYTES;

    return SchemaLib.encode(_schema);
  }

  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](0);

    return SchemaLib.encode(_schema);
  }

  /** Get the table's metadata */
  function getMetadata() internal pure returns (string memory, string[] memory) {
    string[] memory _fieldNames = new string[](3);
    _fieldNames[0] = "width";
    _fieldNames[1] = "height";
    _fieldNames[2] = "terrain";
    return ("MapConfig", _fieldNames);
  }

  /** Register the table's schema */
  function registerSchema() internal {
    StoreSwitch.registerSchema(_tableId, getSchema(), getKeySchema());
  }

  /** Register the table's schema (using the specified store) */
  function registerSchema(IStore _store) internal {
    _store.registerSchema(_tableId, getSchema(), getKeySchema());
  }

  /** Set the table's metadata */
  function setMetadata() internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    StoreSwitch.setMetadata(_tableId, _tableName, _fieldNames);
  }

  /** Set the table's metadata (using the specified store) */
  function setMetadata(IStore _store) internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    _store.setMetadata(_tableId, _tableName, _fieldNames);
  }

  /** Get width */
  function getWidth() internal view returns (uint32 width) {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    bytes memory _blob = StoreSwitch.getField(_tableId, _primaryKeys, 0);
    return (uint32(Bytes.slice4(_blob, 0)));
  }

  /** Get width (using the specified store) */
  function getWidth(IStore _store) internal view returns (uint32 width) {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    bytes memory _blob = _store.getField(_tableId, _primaryKeys, 0);
    return (uint32(Bytes.slice4(_blob, 0)));
  }

  /** Set width */
  function setWidth(uint32 width) internal {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    StoreSwitch.setField(_tableId, _primaryKeys, 0, abi.encodePacked((width)));
  }

  /** Set width (using the specified store) */
  function setWidth(IStore _store, uint32 width) internal {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    _store.setField(_tableId, _primaryKeys, 0, abi.encodePacked((width)));
  }

  /** Get height */
  function getHeight() internal view returns (uint32 height) {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    bytes memory _blob = StoreSwitch.getField(_tableId, _primaryKeys, 1);
    return (uint32(Bytes.slice4(_blob, 0)));
  }

  /** Get height (using the specified store) */
  function getHeight(IStore _store) internal view returns (uint32 height) {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    bytes memory _blob = _store.getField(_tableId, _primaryKeys, 1);
    return (uint32(Bytes.slice4(_blob, 0)));
  }

  /** Set height */
  function setHeight(uint32 height) internal {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    StoreSwitch.setField(_tableId, _primaryKeys, 1, abi.encodePacked((height)));
  }

  /** Set height (using the specified store) */
  function setHeight(IStore _store, uint32 height) internal {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    _store.setField(_tableId, _primaryKeys, 1, abi.encodePacked((height)));
  }

  /** Get terrain */
  function getTerrain() internal view returns (bytes memory terrain) {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    bytes memory _blob = StoreSwitch.getField(_tableId, _primaryKeys, 2);
    return (bytes(_blob));
  }

  /** Get terrain (using the specified store) */
  function getTerrain(IStore _store) internal view returns (bytes memory terrain) {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    bytes memory _blob = _store.getField(_tableId, _primaryKeys, 2);
    return (bytes(_blob));
  }

  /** Set terrain */
  function setTerrain(bytes memory terrain) internal {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    StoreSwitch.setField(_tableId, _primaryKeys, 2, bytes((terrain)));
  }

  /** Set terrain (using the specified store) */
  function setTerrain(IStore _store, bytes memory terrain) internal {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    _store.setField(_tableId, _primaryKeys, 2, bytes((terrain)));
  }

  /** Push a slice to terrain */
  function pushTerrain(bytes memory _slice) internal {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    StoreSwitch.pushToField(_tableId, _primaryKeys, 2, bytes((_slice)));
  }

  /** Push a slice to terrain (using the specified store) */
  function pushTerrain(IStore _store, bytes memory _slice) internal {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    _store.pushToField(_tableId, _primaryKeys, 2, bytes((_slice)));
  }

  /** Get the full data */
  function get() internal view returns (uint32 width, uint32 height, bytes memory terrain) {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    bytes memory _blob = StoreSwitch.getRecord(_tableId, _primaryKeys, getSchema());
    return decode(_blob);
  }

  /** Get the full data (using the specified store) */
  function get(IStore _store) internal view returns (uint32 width, uint32 height, bytes memory terrain) {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    bytes memory _blob = _store.getRecord(_tableId, _primaryKeys, getSchema());
    return decode(_blob);
  }

  /** Set the full data using individual values */
  function set(uint32 width, uint32 height, bytes memory terrain) internal {
    bytes memory _data = encode(width, height, terrain);

    bytes32[] memory _primaryKeys = new bytes32[](0);

    StoreSwitch.setRecord(_tableId, _primaryKeys, _data);
  }

  /** Set the full data using individual values (using the specified store) */
  function set(IStore _store, uint32 width, uint32 height, bytes memory terrain) internal {
    bytes memory _data = encode(width, height, terrain);

    bytes32[] memory _primaryKeys = new bytes32[](0);

    _store.setRecord(_tableId, _primaryKeys, _data);
  }

  /** Decode the tightly packed blob using this table's schema */
  function decode(bytes memory _blob) internal view returns (uint32 width, uint32 height, bytes memory terrain) {
    // 8 is the total byte length of static data
    PackedCounter _encodedLengths = PackedCounter.wrap(Bytes.slice32(_blob, 8));

    width = (uint32(Bytes.slice4(_blob, 0)));

    height = (uint32(Bytes.slice4(_blob, 4)));

    uint256 _start;
    uint256 _end = 40;

    _start = _end;
    _end += _encodedLengths.atIndex(0);
    terrain = (bytes(SliceLib.getSubslice(_blob, _start, _end).toBytes()));
  }

  /** Tightly pack full data using this table's schema */
  function encode(uint32 width, uint32 height, bytes memory terrain) internal view returns (bytes memory) {
    uint16[] memory _counters = new uint16[](1);
    _counters[0] = uint16(bytes(terrain).length);
    PackedCounter _encodedLengths = PackedCounterLib.pack(_counters);

    return abi.encodePacked(width, height, _encodedLengths.unwrap(), bytes((terrain)));
  }

  /* Delete all data for given keys */
  function deleteRecord() internal {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    StoreSwitch.deleteRecord(_tableId, _primaryKeys);
  }

  /* Delete all data for given keys (using the specified store) */
  function deleteRecord(IStore _store) internal {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    _store.deleteRecord(_tableId, _primaryKeys);
  }
}
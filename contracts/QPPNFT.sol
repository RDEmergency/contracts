// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "/contracts/openzeppelin/contracts@4.4.2/token/ERC1155/ERC1155.sol";
import "/contracts/openzeppelin/contracts@4.4.2/access/Ownable.sol";
import "/contracts/openzeppelin/contracts@4.4.2/security/Pausable.sol";
import "/contracts/openzeppelin/contracts@4.4.2/utils/Strings.sol";

contract QPPNFT is ERC1155, Ownable, Pausable {
    using Strings for string;

    constructor(address deputyAdministrator) ERC1155("") { transferOwnership(deputyAdministrator); }
    //constructor() ERC1155("") {}

    function setURI(string memory newuri) public onlyOwner { _setURI(newuri); }

    //function pause() public onlyOwner { _pause(); }

    //function unpause() public onlyOwner { _unpause(); }

    function mint(address account, uint256 id) public onlyOwner{ _mint(account, id, 1, "0x"); }

    //function mint(address account, uint256 id, uint256 amount, bytes memory data) public onlyOwner { _mint(account, id, amount, data); }

    //function mintBatch(address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data) public onlyOwner { _mintBatch(to, ids, amounts, data); }

    //function _beforeTokenTransfer(address operator, address from, address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data) internal whenNotPaused override { super._beforeTokenTransfer(operator, from, to, ids, amounts, data); }

    function uri(uint256 _id) override public view returns (string memory) { return string(abi.encodePacked(super.uri(_id),Strings.toString(_id),".json")); }
}

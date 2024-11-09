// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

uint64 constant TIER_MAX = 7;

enum DAOType { 
    PUBLIC,
    PRIVATE,
    SPONSORED
}

struct TierConfig {
    uint256 amount;
    uint256 price;
    uint256 power;
    uint256 minted;
}

struct DAOConfig {
    string ensname; //must return address 0 since it is new
    DAOType daoType;
    TierConfig[] tiers; // must equeal number of tiers
    address currency; //making sure it is approved
    uint256 maxMembers;
    uint256 noOfTiers; //must equal tiers.length, must be more than 0, must be less than TIER_MAX, must be TIER_MAX IF DAO Type is sponsored
    //joined members check
}

struct DAOInputConfig {
    string ensname;
    DAOType daoType;
    address currency;
    uint256 maxMembers;
    uint256 noOfTiers;
}


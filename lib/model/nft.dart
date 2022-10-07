class Nft {
  String nftImage;
  String nftName;
  String nftPrice;

  Nft({
    required this.nftImage,
    required this.nftName,
    required this.nftPrice,
  });
}

var nftList = [
  Nft(
    nftImage: 'assets/images/nft1.png',
    nftName: 'Astroboy #001',
    nftPrice: '2.70 ETH',
  ),
  Nft(
    nftImage: 'assets/images/nft2.png',
    nftName: 'Azuki #7626',
    nftPrice: '1.90 ETH',
  ),
  Nft(
    nftImage: 'assets/images/nft3.png',
    nftName: 'Lady Cyborg #009',
    nftPrice: '2.70 ETH',
  ),
];
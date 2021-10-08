class TXMediaPublishParam {
  String? signature; // signature
  String? mediaPath; // 媒体地址
  bool enableResume; // 是否启动断点续传，默认开启
  bool enableHttps; // 上传是否使用https。默认关闭，走http
  String? fileName; // 媒体名称

  TXMediaPublishParam({
    this.signature,
    this.mediaPath,
    this.enableResume = true,
    this.enableHttps = false,
    this.fileName,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> jsonObject = Map<String, dynamic>();
    if (signature != null) jsonObject.putIfAbsent('signature', () => signature);
    if (mediaPath != null) jsonObject.putIfAbsent('mediaPath', () => mediaPath);
    if (enableResume != null)
      jsonObject.putIfAbsent('enableResume', () => enableResume);
    if (enableHttps != null)
      jsonObject.putIfAbsent('enableHttps', () => enableHttps);
    if (fileName != null) jsonObject.putIfAbsent('fileName', () => fileName);

    return jsonObject;
  }
}

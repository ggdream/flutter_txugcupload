
class TXPublishParam {
  String? signature; // signature
  String? videoPath; // 视频地址
  String? coverPath; // 封面
  bool enableResume; // 是否启动断点续传，默认开启
  bool enableHttps; // 上传是否使用https。默认关闭，走http
  String? fileName; // 视频名称

  TXPublishParam({
    this.signature,
    this.videoPath,
    this.coverPath,
    this.enableResume = true,
    this.enableHttps = false,
    this.fileName,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> jsonObject = Map<String, dynamic>();
    if (signature != null) jsonObject.putIfAbsent('signature', () => signature);
    if (videoPath != null) jsonObject.putIfAbsent('videoPath', () => videoPath);
    if (coverPath != null) jsonObject.putIfAbsent('coverPath', () => coverPath);
    jsonObject.putIfAbsent('enableResume', () => enableResume);
    jsonObject.putIfAbsent('enableHttps', () => enableHttps);
    if (fileName != null) jsonObject.putIfAbsent('fileName', () => fileName);

    return jsonObject;
  }
}

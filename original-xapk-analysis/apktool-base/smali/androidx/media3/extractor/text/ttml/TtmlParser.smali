.class public final Landroidx/media3/extractor/text/ttml/TtmlParser;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;,
        Landroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;

.field public static final i:Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;


# instance fields
.field public final a:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->b:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->c:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->d:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    const-string v0, "^([-+]?\\d+\\.?\\d*?)%$"

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->e:Ljava/util/regex/Pattern;

    .line 32
    .line 33
    const-string v0, "^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$"

    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->f:Ljava/util/regex/Pattern;

    .line 40
    .line 41
    const-string v0, "^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$"

    .line 42
    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->g:Ljava/util/regex/Pattern;

    .line 48
    .line 49
    const-string v0, "^(\\d+) (\\d+)$"

    .line 50
    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->h:Ljava/util/regex/Pattern;

    .line 56
    .line 57
    new-instance v0, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

    .line 58
    .line 59
    const/high16 v1, 0x41f00000    # 30.0f

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    invoke-direct {v0, v1, v2, v2}, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;-><init>(FII)V

    .line 63
    .line 64
    .line 65
    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->i:Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

    .line 66
    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlParser;->a:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    invoke-virtual {v0, p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const-string v0, "Couldn\'t create XmlPullParserFactory instance"

    .line 17
    .line 18
    invoke-static {v0, p0}, Lu2;->k(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    throw p0
.end method

.method public static c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/media3/extractor/text/ttml/TtmlStyle;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-object p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "tt"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "head"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "body"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "div"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string v0, "p"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const-string v0, "span"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    const-string v0, "br"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    const-string v0, "style"

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    const-string v0, "styling"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    const-string v0, "layout"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_1

    .line 80
    .line 81
    const-string v0, "region"

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_1

    .line 88
    .line 89
    const-string v0, "metadata"

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_1

    .line 96
    .line 97
    const-string v0, "image"

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_1

    .line 104
    .line 105
    const-string v0, "data"

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_1

    .line 112
    .line 113
    const-string v0, "information"

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-eqz p0, :cond_0

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    const/4 p0, 0x0

    .line 123
    return p0

    .line 124
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 125
    return p0
.end method

.method public static e(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 7

    .line 1
    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    .line 2
    .line 3
    const-string v1, "cellResolution"

    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/16 v0, 0xf

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    sget-object v1, Landroidx/media3/extractor/text/ttml/TtmlParser;->h:Ljava/util/regex/Pattern;

    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const-string v3, "Ignoring malformed cell resolution: "

    .line 25
    .line 26
    const-string v4, "TtmlParser"

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {v4, p0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v0

    .line 38
    :cond_1
    const/4 v2, 0x1

    .line 39
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    const/4 v6, 0x2

    .line 51
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/4 v2, 0x0

    .line 68
    :goto_0
    const-string v6, "Invalid cell resolution %s %s"

    .line 69
    .line 70
    invoke-static {v5, v1, v6, v2}, Lcom/google/common/base/Preconditions;->b(IILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    return v1

    .line 74
    :catch_0
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {v4, p0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return v0
.end method

.method public static f(Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlStyle;)V
    .locals 7

    .line 1
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "\\s+"

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v2, v0

    .line 11
    const/4 v3, 0x2

    .line 12
    sget-object v4, Landroidx/media3/extractor/text/ttml/TtmlParser;->d:Ljava/util/regex/Pattern;

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    if-ne v2, v5, :cond_0

    .line 16
    .line 17
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    array-length v2, v0

    .line 23
    if-ne v2, v3, :cond_5

    .line 24
    .line 25
    aget-object v0, v0, v5

    .line 26
    .line 27
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v2, "TtmlParser"

    .line 32
    .line 33
    const-string v4, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    .line 34
    .line 35
    invoke-static {v2, v4}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const-string v4, "\'."

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    const/4 p0, 0x3

    .line 47
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    sparse-switch v6, :sswitch_data_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :sswitch_0
    const-string v6, "px"

    .line 63
    .line 64
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-nez v6, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    move v1, v3

    .line 72
    goto :goto_1

    .line 73
    :sswitch_1
    const-string v6, "em"

    .line 74
    .line 75
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-nez v6, :cond_2

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move v1, v5

    .line 83
    goto :goto_1

    .line 84
    :sswitch_2
    const-string v6, "%"

    .line 85
    .line 86
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-nez v6, :cond_3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    const/4 v1, 0x0

    .line 94
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 95
    .line 96
    .line 97
    new-instance p0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 98
    .line 99
    const-string p1, "Invalid unit for fontSize: \'"

    .line 100
    .line 101
    invoke-static {p1, v2, v4}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :pswitch_0
    iput v5, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->j:I

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :pswitch_1
    iput v3, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->j:I

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :pswitch_2
    iput p0, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->j:I

    .line 116
    .line 117
    :goto_2
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    iput p0, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->k:F

    .line 129
    .line 130
    return-void

    .line 131
    :cond_4
    new-instance p1, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 132
    .line 133
    const-string v0, "Invalid expression for fontSize: \'"

    .line 134
    .line 135
    invoke-static {v0, p0, v4}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :cond_5
    new-instance p0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 144
    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v1, "Invalid number of entries for fontSize: "

    .line 148
    .line 149
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    array-length v0, v0

    .line 153
    const-string v1, "."

    .line 154
    .line 155
    invoke-static {p1, v0, v1}, Ljb;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p0

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;
    .locals 7

    .line 1
    const-string v0, "frameRate"

    .line 2
    .line 3
    const-string v1, "http://www.w3.org/ns/ttml#parameter"

    .line 4
    .line 5
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v0, 0x1e

    .line 17
    .line 18
    :goto_0
    const-string v2, "frameRateMultiplier"

    .line 19
    .line 20
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    sget-object v3, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v3, -0x1

    .line 29
    const-string v4, " "

    .line 30
    .line 31
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    array-length v3, v2

    .line 36
    const/4 v4, 0x2

    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x1

    .line 39
    if-ne v3, v4, :cond_1

    .line 40
    .line 41
    move v3, v6

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v3, v5

    .line 44
    :goto_1
    const-string v4, "frameRateMultiplier doesn\'t have 2 parts"

    .line 45
    .line 46
    invoke-static {v4, v3}, Lcom/google/common/base/Preconditions;->d(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    aget-object v3, v2, v5

    .line 50
    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    int-to-float v3, v3

    .line 56
    aget-object v2, v2, v6

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    int-to-float v2, v2

    .line 63
    div-float/2addr v3, v2

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    .line 66
    .line 67
    :goto_2
    sget-object v2, Landroidx/media3/extractor/text/ttml/TtmlParser;->i:Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

    .line 68
    .line 69
    iget v4, v2, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->b:I

    .line 70
    .line 71
    const-string v5, "subFrameRate"

    .line 72
    .line 73
    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    if-eqz v5, :cond_3

    .line 78
    .line 79
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    :cond_3
    iget v2, v2, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->c:I

    .line 84
    .line 85
    const-string v5, "tickRate"

    .line 86
    .line 87
    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    if-eqz p0, :cond_4

    .line 92
    .line 93
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    :cond_4
    new-instance p0, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

    .line 98
    .line 99
    int-to-float v0, v0

    .line 100
    mul-float/2addr v0, v3

    .line 101
    invoke-direct {p0, v0, v4, v2}, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;-><init>(FII)V

    .line 102
    .line 103
    .line 104
    return-object p0
.end method

.method public static h(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;ILandroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 8
    .line 9
    .line 10
    const-string v3, "style"

    .line 11
    .line 12
    invoke-static {v0, v3}, Landroidx/media3/common/util/XmlPullParserUtil;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, -0x1

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz v4, :cond_6

    .line 19
    .line 20
    invoke-static {v0, v3}, Landroidx/media3/common/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v4, Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 25
    .line 26
    invoke-direct {v4}, Landroidx/media3/extractor/text/ttml/TtmlStyle;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v4}, Landroidx/media3/extractor/text/ttml/TtmlParser;->j(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_1

    .line 44
    .line 45
    new-array v3, v6, [Ljava/lang/String;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-object v7, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 49
    .line 50
    const-string v7, "\\s+"

    .line 51
    .line 52
    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :goto_0
    array-length v5, v3

    .line 57
    :goto_1
    if-ge v6, v5, :cond_2

    .line 58
    .line 59
    aget-object v7, v3, v6

    .line 60
    .line 61
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 66
    .line 67
    invoke-virtual {v4, v7}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->a(Landroidx/media3/extractor/text/ttml/TtmlStyle;)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v6, v6, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    iget-object v3, v4, Landroidx/media3/extractor/text/ttml/TtmlStyle;->l:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v3, :cond_3

    .line 76
    .line 77
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_3
    move/from16 v3, p2

    .line 81
    .line 82
    :cond_4
    move-object/from16 v6, p4

    .line 83
    .line 84
    :cond_5
    :goto_2
    move-object/from16 v9, p5

    .line 85
    .line 86
    goto/16 :goto_10

    .line 87
    .line 88
    :cond_6
    const-string v4, "region"

    .line 89
    .line 90
    invoke-static {v0, v4}, Landroidx/media3/common/util/XmlPullParserUtil;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    const-string v7, "id"

    .line 95
    .line 96
    if-eqz v4, :cond_1a

    .line 97
    .line 98
    invoke-static {v0, v7}, Landroidx/media3/common/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    if-nez v9, :cond_7

    .line 103
    .line 104
    :goto_3
    move/from16 v3, p2

    .line 105
    .line 106
    const/4 v4, 0x0

    .line 107
    goto/16 :goto_e

    .line 108
    .line 109
    :cond_7
    const-string v7, "origin"

    .line 110
    .line 111
    invoke-static {v0, v7}, Landroidx/media3/common/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    if-nez v7, :cond_8

    .line 116
    .line 117
    invoke-static {v0, v3}, Landroidx/media3/common/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    if-eqz v8, :cond_8

    .line 122
    .line 123
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    check-cast v8, Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 128
    .line 129
    if-eqz v8, :cond_8

    .line 130
    .line 131
    iget-object v7, v8, Landroidx/media3/extractor/text/ttml/TtmlStyle;->t:Ljava/lang/String;

    .line 132
    .line 133
    :cond_8
    const/4 v8, 0x2

    .line 134
    const/4 v10, 0x1

    .line 135
    const-string v11, "Ignoring region with missing tts:extent: "

    .line 136
    .line 137
    sget-object v12, Landroidx/media3/extractor/text/ttml/TtmlParser;->g:Ljava/util/regex/Pattern;

    .line 138
    .line 139
    sget-object v13, Landroidx/media3/extractor/text/ttml/TtmlParser;->f:Ljava/util/regex/Pattern;

    .line 140
    .line 141
    const/high16 v14, 0x42c80000    # 100.0f

    .line 142
    .line 143
    const-string v15, "TtmlParser"

    .line 144
    .line 145
    if-eqz v7, :cond_c

    .line 146
    .line 147
    invoke-virtual {v13, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v12, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 156
    .line 157
    .line 158
    move-result v18

    .line 159
    const-string v6, "Ignoring region with malformed origin: "

    .line 160
    .line 161
    if-eqz v18, :cond_9

    .line 162
    .line 163
    :try_start_0
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    div-float/2addr v5, v14

    .line 175
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 183
    .line 184
    .line 185
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    div-float/2addr v4, v14

    .line 187
    move/from16 v18, v14

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :catch_0
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-static {v15, v3}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_9
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    if-eqz v4, :cond_b

    .line 203
    .line 204
    if-nez v2, :cond_a

    .line 205
    .line 206
    invoke-virtual {v11, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-static {v15, v3}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_a
    :try_start_1
    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    int-to-float v4, v4

    .line 237
    move/from16 v18, v14

    .line 238
    .line 239
    iget v14, v2, Landroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;->a:I

    .line 240
    .line 241
    int-to-float v14, v14

    .line 242
    div-float/2addr v4, v14

    .line 243
    int-to-float v5, v5

    .line 244
    iget v6, v2, Landroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;->b:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    .line 246
    int-to-float v6, v6

    .line 247
    div-float/2addr v5, v6

    .line 248
    move/from16 v20, v5

    .line 249
    .line 250
    move v5, v4

    .line 251
    move/from16 v4, v20

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :catch_1
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-static {v15, v3}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_3

    .line 262
    .line 263
    :cond_b
    const-string v3, "Ignoring region with unsupported origin: "

    .line 264
    .line 265
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-static {v15, v3}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_3

    .line 273
    .line 274
    :cond_c
    move/from16 v18, v14

    .line 275
    .line 276
    const/4 v4, 0x0

    .line 277
    move v5, v4

    .line 278
    :goto_4
    const-string v6, "extent"

    .line 279
    .line 280
    invoke-static {v0, v6}, Landroidx/media3/common/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    if-nez v6, :cond_d

    .line 285
    .line 286
    invoke-static {v0, v3}, Landroidx/media3/common/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v14

    .line 290
    if-eqz v14, :cond_d

    .line 291
    .line 292
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v14

    .line 296
    check-cast v14, Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 297
    .line 298
    if-eqz v14, :cond_d

    .line 299
    .line 300
    iget-object v6, v14, Landroidx/media3/extractor/text/ttml/TtmlStyle;->u:Ljava/lang/String;

    .line 301
    .line 302
    :cond_d
    if-eqz v6, :cond_11

    .line 303
    .line 304
    invoke-virtual {v13, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 305
    .line 306
    .line 307
    move-result-object v13

    .line 308
    invoke-virtual {v12, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    .line 313
    .line 314
    .line 315
    move-result v12

    .line 316
    const/high16 v19, 0x3f800000    # 1.0f

    .line 317
    .line 318
    const-string v14, "Ignoring region with malformed extent: "

    .line 319
    .line 320
    if-eqz v12, :cond_e

    .line 321
    .line 322
    :try_start_2
    invoke-virtual {v13, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 330
    .line 331
    .line 332
    move-result v6

    .line 333
    div-float v6, v6, v18

    .line 334
    .line 335
    invoke-virtual {v13, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v11

    .line 339
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 343
    .line 344
    .line 345
    move-result v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 346
    div-float v7, v7, v18

    .line 347
    .line 348
    goto :goto_5

    .line 349
    :catch_2
    invoke-static {v14, v7, v15}, Lq;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    goto/16 :goto_3

    .line 353
    .line 354
    :cond_e
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 355
    .line 356
    .line 357
    move-result v12

    .line 358
    if-eqz v12, :cond_10

    .line 359
    .line 360
    if-nez v2, :cond_f

    .line 361
    .line 362
    invoke-static {v11, v7, v15}, Lq;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_3

    .line 366
    .line 367
    :cond_f
    :try_start_3
    invoke-virtual {v6, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v11

    .line 371
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    .line 373
    .line 374
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    move-result v11

    .line 378
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    move-result v6

    .line 389
    int-to-float v11, v11

    .line 390
    iget v12, v2, Landroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;->a:I

    .line 391
    .line 392
    int-to-float v12, v12

    .line 393
    div-float/2addr v11, v12

    .line 394
    int-to-float v6, v6

    .line 395
    iget v7, v2, Landroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;->b:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 396
    .line 397
    int-to-float v7, v7

    .line 398
    div-float v7, v6, v7

    .line 399
    .line 400
    move v6, v11

    .line 401
    :goto_5
    move v14, v6

    .line 402
    move v15, v7

    .line 403
    goto :goto_6

    .line 404
    :catch_3
    invoke-static {v14, v7, v15}, Lq;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    goto/16 :goto_3

    .line 408
    .line 409
    :cond_10
    const-string v3, "Ignoring region with unsupported extent: "

    .line 410
    .line 411
    invoke-static {v3, v7, v15}, Lq;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    goto/16 :goto_3

    .line 415
    .line 416
    :cond_11
    const/high16 v19, 0x3f800000    # 1.0f

    .line 417
    .line 418
    move/from16 v14, v19

    .line 419
    .line 420
    move v15, v14

    .line 421
    :goto_6
    const-string v6, "displayAlign"

    .line 422
    .line 423
    invoke-static {v0, v6}, Landroidx/media3/common/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    if-nez v6, :cond_12

    .line 428
    .line 429
    invoke-static {v0, v3}, Landroidx/media3/common/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    if-eqz v3, :cond_12

    .line 434
    .line 435
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    check-cast v3, Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 440
    .line 441
    if-eqz v3, :cond_12

    .line 442
    .line 443
    iget-object v6, v3, Landroidx/media3/extractor/text/ttml/TtmlStyle;->v:Ljava/lang/String;

    .line 444
    .line 445
    :cond_12
    if-eqz v6, :cond_15

    .line 446
    .line 447
    invoke-static {v6}, Lcom/google/common/base/Ascii;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 452
    .line 453
    .line 454
    const-string v6, "center"

    .line 455
    .line 456
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v6

    .line 460
    if-nez v6, :cond_14

    .line 461
    .line 462
    const-string v6, "after"

    .line 463
    .line 464
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v3

    .line 468
    if-nez v3, :cond_13

    .line 469
    .line 470
    goto :goto_7

    .line 471
    :cond_13
    add-float/2addr v4, v15

    .line 472
    move/from16 v3, p2

    .line 473
    .line 474
    move v11, v4

    .line 475
    move v13, v8

    .line 476
    goto :goto_8

    .line 477
    :cond_14
    const/high16 v3, 0x40000000    # 2.0f

    .line 478
    .line 479
    div-float v3, v15, v3

    .line 480
    .line 481
    add-float/2addr v4, v3

    .line 482
    move/from16 v3, p2

    .line 483
    .line 484
    move v11, v4

    .line 485
    move v13, v10

    .line 486
    goto :goto_8

    .line 487
    :cond_15
    :goto_7
    move/from16 v3, p2

    .line 488
    .line 489
    move v11, v4

    .line 490
    const/4 v13, 0x0

    .line 491
    :goto_8
    int-to-float v4, v3

    .line 492
    div-float v4, v19, v4

    .line 493
    .line 494
    const-string v6, "writingMode"

    .line 495
    .line 496
    invoke-static {v0, v6}, Landroidx/media3/common/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v6

    .line 500
    if-eqz v6, :cond_19

    .line 501
    .line 502
    invoke-static {v6}, Lcom/google/common/base/Ascii;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v6

    .line 506
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 510
    .line 511
    .line 512
    move-result v7

    .line 513
    sparse-switch v7, :sswitch_data_0

    .line 514
    .line 515
    .line 516
    :goto_9
    const/16 v17, -0x1

    .line 517
    .line 518
    goto :goto_a

    .line 519
    :sswitch_0
    const-string v7, "tbrl"

    .line 520
    .line 521
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result v6

    .line 525
    if-nez v6, :cond_16

    .line 526
    .line 527
    goto :goto_9

    .line 528
    :cond_16
    move/from16 v17, v8

    .line 529
    .line 530
    goto :goto_a

    .line 531
    :sswitch_1
    const-string v7, "tblr"

    .line 532
    .line 533
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result v6

    .line 537
    if-nez v6, :cond_17

    .line 538
    .line 539
    goto :goto_9

    .line 540
    :cond_17
    move/from16 v17, v10

    .line 541
    .line 542
    goto :goto_a

    .line 543
    :sswitch_2
    const-string v7, "tb"

    .line 544
    .line 545
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    move-result v6

    .line 549
    if-nez v6, :cond_18

    .line 550
    .line 551
    goto :goto_9

    .line 552
    :cond_18
    const/16 v17, 0x0

    .line 553
    .line 554
    :goto_a
    packed-switch v17, :pswitch_data_0

    .line 555
    .line 556
    .line 557
    goto :goto_c

    .line 558
    :pswitch_0
    move/from16 v18, v10

    .line 559
    .line 560
    goto :goto_d

    .line 561
    :goto_b
    :pswitch_1
    move/from16 v18, v8

    .line 562
    .line 563
    goto :goto_d

    .line 564
    :cond_19
    :goto_c
    const/high16 v8, -0x80000000

    .line 565
    .line 566
    goto :goto_b

    .line 567
    :goto_d
    new-instance v8, Landroidx/media3/extractor/text/ttml/TtmlRegion;

    .line 568
    .line 569
    const/4 v12, 0x0

    .line 570
    const/16 v16, 0x1

    .line 571
    .line 572
    move/from16 v17, v4

    .line 573
    .line 574
    move v10, v5

    .line 575
    invoke-direct/range {v8 .. v18}, Landroidx/media3/extractor/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;FFIIFFIFI)V

    .line 576
    .line 577
    .line 578
    move-object v4, v8

    .line 579
    :goto_e
    if-eqz v4, :cond_4

    .line 580
    .line 581
    iget-object v5, v4, Landroidx/media3/extractor/text/ttml/TtmlRegion;->a:Ljava/lang/String;

    .line 582
    .line 583
    move-object/from16 v6, p4

    .line 584
    .line 585
    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    goto/16 :goto_2

    .line 589
    .line 590
    :cond_1a
    move/from16 v3, p2

    .line 591
    .line 592
    move-object/from16 v6, p4

    .line 593
    .line 594
    const-string v4, "metadata"

    .line 595
    .line 596
    invoke-static {v0, v4}, Landroidx/media3/common/util/XmlPullParserUtil;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 597
    .line 598
    .line 599
    move-result v5

    .line 600
    if-eqz v5, :cond_5

    .line 601
    .line 602
    :cond_1b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 603
    .line 604
    .line 605
    const-string v5, "image"

    .line 606
    .line 607
    invoke-static {v0, v5}, Landroidx/media3/common/util/XmlPullParserUtil;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 608
    .line 609
    .line 610
    move-result v5

    .line 611
    if-eqz v5, :cond_1c

    .line 612
    .line 613
    invoke-static {v0, v7}, Landroidx/media3/common/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v5

    .line 617
    if-eqz v5, :cond_1c

    .line 618
    .line 619
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v8

    .line 623
    move-object/from16 v9, p5

    .line 624
    .line 625
    invoke-virtual {v9, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    goto :goto_f

    .line 629
    :cond_1c
    move-object/from16 v9, p5

    .line 630
    .line 631
    :goto_f
    invoke-static {v0, v4}, Landroidx/media3/common/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 632
    .line 633
    .line 634
    move-result v5

    .line 635
    if-eqz v5, :cond_1b

    .line 636
    .line 637
    :goto_10
    const-string v4, "head"

    .line 638
    .line 639
    invoke-static {v0, v4}, Landroidx/media3/common/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 640
    .line 641
    .line 642
    move-result v4

    .line 643
    if-eqz v4, :cond_0

    .line 644
    .line 645
    return-void

    .line 646
    nop

    .line 647
    :sswitch_data_0
    .sparse-switch
        0xe6e -> :sswitch_2
        0x363874 -> :sswitch_1
        0x363928 -> :sswitch_0
    .end sparse-switch

    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static i(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/HashMap;Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;)Landroidx/media3/extractor/text/ttml/TtmlNode;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v0, v3}, Landroidx/media3/extractor/text/ttml/TtmlParser;->j(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 13
    .line 14
    .line 15
    move-result-object v7

    .line 16
    const-string v6, ""

    .line 17
    .line 18
    move-object v10, v3

    .line 19
    move-object v9, v6

    .line 20
    const/4 v6, 0x0

    .line 21
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    :goto_0
    if-ge v6, v2, :cond_9

    .line 37
    .line 38
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v20

    .line 58
    sparse-switch v20, :sswitch_data_0

    .line 59
    .line 60
    .line 61
    :goto_1
    const/4 v4, -0x1

    .line 62
    goto :goto_2

    .line 63
    :sswitch_0
    const-string v8, "backgroundImage"

    .line 64
    .line 65
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_0

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_0
    const/4 v4, 0x5

    .line 73
    goto :goto_2

    .line 74
    :sswitch_1
    const-string v8, "style"

    .line 75
    .line 76
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-nez v4, :cond_1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    const/4 v4, 0x4

    .line 84
    goto :goto_2

    .line 85
    :sswitch_2
    const-string v8, "begin"

    .line 86
    .line 87
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-nez v4, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const/4 v4, 0x3

    .line 95
    goto :goto_2

    .line 96
    :sswitch_3
    const-string v8, "end"

    .line 97
    .line 98
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-nez v4, :cond_3

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    const/4 v4, 0x2

    .line 106
    goto :goto_2

    .line 107
    :sswitch_4
    const-string v8, "dur"

    .line 108
    .line 109
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-nez v4, :cond_4

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    const/4 v4, 0x1

    .line 117
    goto :goto_2

    .line 118
    :sswitch_5
    const-string v8, "region"

    .line 119
    .line 120
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-nez v4, :cond_5

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    const/4 v4, 0x0

    .line 128
    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :pswitch_0
    const-string v4, "#"

    .line 133
    .line 134
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eqz v4, :cond_6

    .line 139
    .line 140
    const/4 v4, 0x1

    .line 141
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    move-object v10, v4

    .line 146
    :cond_6
    :goto_3
    move-object/from16 v4, p2

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :pswitch_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    const/4 v8, 0x0

    .line 158
    if-eqz v5, :cond_7

    .line 159
    .line 160
    new-array v4, v8, [Ljava/lang/String;

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_7
    sget-object v5, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 164
    .line 165
    const-string v5, "\\s+"

    .line 166
    .line 167
    const/4 v8, -0x1

    .line 168
    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    :goto_4
    array-length v5, v4

    .line 173
    if-lez v5, :cond_6

    .line 174
    .line 175
    move-object v3, v4

    .line 176
    goto :goto_3

    .line 177
    :pswitch_2
    invoke-static {v5, v1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->k(Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;)J

    .line 178
    .line 179
    .line 180
    move-result-wide v12

    .line 181
    goto :goto_3

    .line 182
    :pswitch_3
    invoke-static {v5, v1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->k(Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;)J

    .line 183
    .line 184
    .line 185
    move-result-wide v14

    .line 186
    goto :goto_3

    .line 187
    :pswitch_4
    invoke-static {v5, v1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->k(Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;)J

    .line 188
    .line 189
    .line 190
    move-result-wide v16

    .line 191
    goto :goto_3

    .line 192
    :pswitch_5
    move-object/from16 v4, p2

    .line 193
    .line 194
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    if-eqz v8, :cond_8

    .line 199
    .line 200
    move-object v9, v5

    .line 201
    :cond_8
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :cond_9
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    if-eqz v11, :cond_b

    .line 211
    .line 212
    iget-wide v1, v11, Landroidx/media3/extractor/text/ttml/TtmlNode;->d:J

    .line 213
    .line 214
    cmp-long v4, v1, v18

    .line 215
    .line 216
    if-eqz v4, :cond_b

    .line 217
    .line 218
    cmp-long v4, v12, v18

    .line 219
    .line 220
    if-eqz v4, :cond_a

    .line 221
    .line 222
    add-long/2addr v12, v1

    .line 223
    goto :goto_6

    .line 224
    :cond_a
    move-wide v12, v1

    .line 225
    :goto_6
    cmp-long v4, v14, v18

    .line 226
    .line 227
    if-eqz v4, :cond_b

    .line 228
    .line 229
    add-long/2addr v14, v1

    .line 230
    :cond_b
    cmp-long v1, v14, v18

    .line 231
    .line 232
    if-nez v1, :cond_c

    .line 233
    .line 234
    cmp-long v1, v16, v18

    .line 235
    .line 236
    if-eqz v1, :cond_d

    .line 237
    .line 238
    add-long v14, v12, v16

    .line 239
    .line 240
    :cond_c
    move-wide v5, v14

    .line 241
    goto :goto_7

    .line 242
    :cond_d
    if-eqz v11, :cond_c

    .line 243
    .line 244
    iget-wide v1, v11, Landroidx/media3/extractor/text/ttml/TtmlNode;->e:J

    .line 245
    .line 246
    cmp-long v4, v1, v18

    .line 247
    .line 248
    if-eqz v4, :cond_c

    .line 249
    .line 250
    move-wide v5, v1

    .line 251
    :goto_7
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    new-instance v0, Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 256
    .line 257
    const/4 v2, 0x0

    .line 258
    move-object v8, v3

    .line 259
    move-wide v3, v12

    .line 260
    invoke-direct/range {v0 .. v11}, Landroidx/media3/extractor/text/ttml/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;JJLandroidx/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlNode;)V

    .line 261
    .line 262
    .line 263
    return-object v0

    .line 264
    nop

    .line 265
    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_5
        0x18601 -> :sswitch_4
        0x188db -> :sswitch_3
        0x59478a9 -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x4d0b70cd -> :sswitch_0
    .end sparse-switch

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    move-object/from16 v0, p1

    .line 9
    .line 10
    move v4, v3

    .line 11
    :goto_0
    if-ge v4, v2, :cond_3e

    .line 12
    .line 13
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    sparse-switch v7, :sswitch_data_0

    .line 29
    .line 30
    .line 31
    :goto_1
    const/4 v6, -0x1

    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :sswitch_0
    const-string v7, "multiRowAlign"

    .line 35
    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-nez v6, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const/16 v6, 0x11

    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :sswitch_1
    const-string v7, "displayAlign"

    .line 48
    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-nez v6, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/16 v6, 0x10

    .line 57
    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :sswitch_2
    const-string v7, "backgroundColor"

    .line 61
    .line 62
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-nez v6, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const/16 v6, 0xf

    .line 70
    .line 71
    goto/16 :goto_2

    .line 72
    .line 73
    :sswitch_3
    const-string v7, "rubyPosition"

    .line 74
    .line 75
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-nez v6, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    const/16 v6, 0xe

    .line 83
    .line 84
    goto/16 :goto_2

    .line 85
    .line 86
    :sswitch_4
    const-string v7, "textEmphasis"

    .line 87
    .line 88
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-nez v6, :cond_4

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    const/16 v6, 0xd

    .line 96
    .line 97
    goto/16 :goto_2

    .line 98
    .line 99
    :sswitch_5
    const-string v7, "fontSize"

    .line 100
    .line 101
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-nez v6, :cond_5

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    const/16 v6, 0xc

    .line 109
    .line 110
    goto/16 :goto_2

    .line 111
    .line 112
    :sswitch_6
    const-string v7, "textCombine"

    .line 113
    .line 114
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-nez v6, :cond_6

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_6
    const/16 v6, 0xb

    .line 122
    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :sswitch_7
    const-string v7, "shear"

    .line 126
    .line 127
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-nez v6, :cond_7

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_7
    const/16 v6, 0xa

    .line 135
    .line 136
    goto/16 :goto_2

    .line 137
    .line 138
    :sswitch_8
    const-string v7, "color"

    .line 139
    .line 140
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-nez v6, :cond_8

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_8
    const/16 v6, 0x9

    .line 148
    .line 149
    goto/16 :goto_2

    .line 150
    .line 151
    :sswitch_9
    const-string v7, "ruby"

    .line 152
    .line 153
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-nez v6, :cond_9

    .line 158
    .line 159
    goto/16 :goto_1

    .line 160
    .line 161
    :cond_9
    const/16 v6, 0x8

    .line 162
    .line 163
    goto/16 :goto_2

    .line 164
    .line 165
    :sswitch_a
    const-string v7, "id"

    .line 166
    .line 167
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    if-nez v6, :cond_a

    .line 172
    .line 173
    goto/16 :goto_1

    .line 174
    .line 175
    :cond_a
    const/4 v6, 0x7

    .line 176
    goto :goto_2

    .line 177
    :sswitch_b
    const-string v7, "fontWeight"

    .line 178
    .line 179
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    if-nez v6, :cond_b

    .line 184
    .line 185
    goto/16 :goto_1

    .line 186
    .line 187
    :cond_b
    const/4 v6, 0x6

    .line 188
    goto :goto_2

    .line 189
    :sswitch_c
    const-string v7, "textDecoration"

    .line 190
    .line 191
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-nez v6, :cond_c

    .line 196
    .line 197
    goto/16 :goto_1

    .line 198
    .line 199
    :cond_c
    const/4 v6, 0x5

    .line 200
    goto :goto_2

    .line 201
    :sswitch_d
    const-string v7, "origin"

    .line 202
    .line 203
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-nez v6, :cond_d

    .line 208
    .line 209
    goto/16 :goto_1

    .line 210
    .line 211
    :cond_d
    const/4 v6, 0x4

    .line 212
    goto :goto_2

    .line 213
    :sswitch_e
    const-string v7, "textAlign"

    .line 214
    .line 215
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-nez v6, :cond_e

    .line 220
    .line 221
    goto/16 :goto_1

    .line 222
    .line 223
    :cond_e
    const/4 v6, 0x3

    .line 224
    goto :goto_2

    .line 225
    :sswitch_f
    const-string v7, "fontFamily"

    .line 226
    .line 227
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    if-nez v6, :cond_f

    .line 232
    .line 233
    goto/16 :goto_1

    .line 234
    .line 235
    :cond_f
    const/4 v6, 0x2

    .line 236
    goto :goto_2

    .line 237
    :sswitch_10
    const-string v7, "extent"

    .line 238
    .line 239
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    if-nez v6, :cond_10

    .line 244
    .line 245
    goto/16 :goto_1

    .line 246
    .line 247
    :cond_10
    const/4 v6, 0x1

    .line 248
    goto :goto_2

    .line 249
    :sswitch_11
    const-string v7, "fontStyle"

    .line 250
    .line 251
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    if-nez v6, :cond_11

    .line 256
    .line 257
    goto/16 :goto_1

    .line 258
    .line 259
    :cond_11
    move v6, v3

    .line 260
    :goto_2
    const-string v7, "none"

    .line 261
    .line 262
    const-string v14, "after"

    .line 263
    .line 264
    const-string v15, "before"

    .line 265
    .line 266
    const-string v8, "start"

    .line 267
    .line 268
    const-string v9, "right"

    .line 269
    .line 270
    const-string v11, "left"

    .line 271
    .line 272
    const-string v10, "end"

    .line 273
    .line 274
    const-string v12, "center"

    .line 275
    .line 276
    const/16 v17, 0x0

    .line 277
    .line 278
    const-string v13, "TtmlParser"

    .line 279
    .line 280
    packed-switch v6, :pswitch_data_0

    .line 281
    .line 282
    .line 283
    goto/16 :goto_1a

    .line 284
    .line 285
    :pswitch_0
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-static {v5}, Lcom/google/common/base/Ascii;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    sparse-switch v6, :sswitch_data_1

    .line 301
    .line 302
    .line 303
    :goto_3
    const/4 v9, -0x1

    .line 304
    goto :goto_4

    .line 305
    :sswitch_12
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    if-nez v5, :cond_12

    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_12
    const/4 v9, 0x4

    .line 313
    goto :goto_4

    .line 314
    :sswitch_13
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    if-nez v5, :cond_13

    .line 319
    .line 320
    goto :goto_3

    .line 321
    :cond_13
    const/4 v9, 0x3

    .line 322
    goto :goto_4

    .line 323
    :sswitch_14
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    if-nez v5, :cond_14

    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_14
    const/4 v9, 0x2

    .line 331
    goto :goto_4

    .line 332
    :sswitch_15
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    if-nez v5, :cond_15

    .line 337
    .line 338
    goto :goto_3

    .line 339
    :cond_15
    const/4 v9, 0x1

    .line 340
    goto :goto_4

    .line 341
    :sswitch_16
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    if-nez v5, :cond_16

    .line 346
    .line 347
    goto :goto_3

    .line 348
    :cond_16
    move v9, v3

    .line 349
    :goto_4
    packed-switch v9, :pswitch_data_1

    .line 350
    .line 351
    .line 352
    :goto_5
    move-object/from16 v5, v17

    .line 353
    .line 354
    goto :goto_6

    .line 355
    :pswitch_1
    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 356
    .line 357
    goto :goto_5

    .line 358
    :pswitch_2
    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 359
    .line 360
    goto :goto_5

    .line 361
    :pswitch_3
    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 362
    .line 363
    goto :goto_5

    .line 364
    :goto_6
    iput-object v5, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->p:Landroid/text/Layout$Alignment;

    .line 365
    .line 366
    goto/16 :goto_1a

    .line 367
    .line 368
    :pswitch_4
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    iput-object v5, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->v:Ljava/lang/String;

    .line 373
    .line 374
    goto/16 :goto_1a

    .line 375
    .line 376
    :pswitch_5
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    :try_start_0
    invoke-static {v5, v3}, Landroidx/media3/common/util/ColorParser;->a(Ljava/lang/String;Z)I

    .line 381
    .line 382
    .line 383
    move-result v6

    .line 384
    iput v6, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->d:I

    .line 385
    .line 386
    const/4 v6, 0x1

    .line 387
    iput-boolean v6, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->e:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .line 389
    goto/16 :goto_1a

    .line 390
    .line 391
    :catch_0
    const-string v6, "Failed parsing background value: "

    .line 392
    .line 393
    invoke-static {v6, v5, v13}, Lq;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    goto/16 :goto_1a

    .line 397
    .line 398
    :pswitch_6
    invoke-static {v5}, Lcom/google/common/base/Ascii;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v5

    .line 402
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v6

    .line 409
    if-nez v6, :cond_18

    .line 410
    .line 411
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v5

    .line 415
    if-nez v5, :cond_17

    .line 416
    .line 417
    goto/16 :goto_1a

    .line 418
    .line 419
    :cond_17
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    const/4 v5, 0x2

    .line 424
    iput v5, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->n:I

    .line 425
    .line 426
    goto/16 :goto_1a

    .line 427
    .line 428
    :cond_18
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    const/4 v6, 0x1

    .line 433
    iput v6, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->n:I

    .line 434
    .line 435
    goto/16 :goto_1a

    .line 436
    .line 437
    :pswitch_7
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    sget-object v6, Landroidx/media3/extractor/text/ttml/TextEmphasis;->d:Ljava/util/regex/Pattern;

    .line 442
    .line 443
    if-nez v5, :cond_19

    .line 444
    .line 445
    :goto_7
    move-object/from16 v5, v17

    .line 446
    .line 447
    goto/16 :goto_10

    .line 448
    .line 449
    :cond_19
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    invoke-static {v5}, Lcom/google/common/base/Ascii;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v5

    .line 457
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 458
    .line 459
    .line 460
    move-result v6

    .line 461
    if-eqz v6, :cond_1a

    .line 462
    .line 463
    goto :goto_7

    .line 464
    :cond_1a
    sget-object v6, Landroidx/media3/extractor/text/ttml/TextEmphasis;->d:Ljava/util/regex/Pattern;

    .line 465
    .line 466
    invoke-static {v5, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v5

    .line 470
    invoke-static {v5}, Lcom/google/common/collect/ImmutableSet;->o([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    sget-object v6, Landroidx/media3/extractor/text/ttml/TextEmphasis;->h:Lcom/google/common/collect/ImmutableSet;

    .line 475
    .line 476
    invoke-static {v6, v5}, Lcom/google/common/collect/Sets;->d(Ljava/util/Set;Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/Sets$SetView;

    .line 477
    .line 478
    .line 479
    move-result-object v6

    .line 480
    const-string v8, "outside"

    .line 481
    .line 482
    invoke-static {v6, v8}, Lcom/google/common/collect/Iterables;->a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v6

    .line 486
    check-cast v6, Ljava/lang/String;

    .line 487
    .line 488
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 489
    .line 490
    .line 491
    move-result v9

    .line 492
    const v10, -0x5305c081

    .line 493
    .line 494
    .line 495
    if-eq v9, v10, :cond_1d

    .line 496
    .line 497
    const v10, -0x41ecca5b

    .line 498
    .line 499
    .line 500
    if-eq v9, v10, :cond_1c

    .line 501
    .line 502
    const v8, 0x58705dc

    .line 503
    .line 504
    .line 505
    if-eq v9, v8, :cond_1b

    .line 506
    .line 507
    goto :goto_8

    .line 508
    :cond_1b
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result v6

    .line 512
    if-eqz v6, :cond_1e

    .line 513
    .line 514
    const/4 v6, 0x2

    .line 515
    goto :goto_9

    .line 516
    :cond_1c
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result v6

    .line 520
    if-eqz v6, :cond_1e

    .line 521
    .line 522
    const/4 v6, -0x2

    .line 523
    goto :goto_9

    .line 524
    :cond_1d
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result v6

    .line 528
    :cond_1e
    :goto_8
    const/4 v6, 0x1

    .line 529
    :goto_9
    sget-object v8, Landroidx/media3/extractor/text/ttml/TextEmphasis;->e:Lcom/google/common/collect/ImmutableSet;

    .line 530
    .line 531
    invoke-static {v8, v5}, Lcom/google/common/collect/Sets;->d(Ljava/util/Set;Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/Sets$SetView;

    .line 532
    .line 533
    .line 534
    move-result-object v8

    .line 535
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    .line 536
    .line 537
    .line 538
    move-result v9

    .line 539
    if-nez v9, :cond_22

    .line 540
    .line 541
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 542
    .line 543
    .line 544
    move-result-object v5

    .line 545
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v5

    .line 549
    check-cast v5, Ljava/lang/String;

    .line 550
    .line 551
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 552
    .line 553
    .line 554
    move-result v8

    .line 555
    const v9, 0x2dddaf

    .line 556
    .line 557
    .line 558
    if-eq v8, v9, :cond_20

    .line 559
    .line 560
    const v9, 0x33af38

    .line 561
    .line 562
    .line 563
    if-eq v8, v9, :cond_1f

    .line 564
    .line 565
    goto :goto_a

    .line 566
    :cond_1f
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v5

    .line 570
    if-eqz v5, :cond_21

    .line 571
    .line 572
    move v10, v3

    .line 573
    goto :goto_b

    .line 574
    :cond_20
    const-string v7, "auto"

    .line 575
    .line 576
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    move-result v5

    .line 580
    :cond_21
    :goto_a
    const/4 v10, -0x1

    .line 581
    :goto_b
    new-instance v5, Landroidx/media3/extractor/text/ttml/TextEmphasis;

    .line 582
    .line 583
    invoke-direct {v5, v10, v3, v6}, Landroidx/media3/extractor/text/ttml/TextEmphasis;-><init>(III)V

    .line 584
    .line 585
    .line 586
    goto/16 :goto_10

    .line 587
    .line 588
    :cond_22
    sget-object v7, Landroidx/media3/extractor/text/ttml/TextEmphasis;->g:Lcom/google/common/collect/ImmutableSet;

    .line 589
    .line 590
    invoke-static {v7, v5}, Lcom/google/common/collect/Sets;->d(Ljava/util/Set;Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/Sets$SetView;

    .line 591
    .line 592
    .line 593
    move-result-object v7

    .line 594
    sget-object v8, Landroidx/media3/extractor/text/ttml/TextEmphasis;->f:Lcom/google/common/collect/ImmutableSet;

    .line 595
    .line 596
    invoke-static {v8, v5}, Lcom/google/common/collect/Sets;->d(Ljava/util/Set;Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/Sets$SetView;

    .line 597
    .line 598
    .line 599
    move-result-object v5

    .line 600
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    .line 601
    .line 602
    .line 603
    move-result v8

    .line 604
    if-eqz v8, :cond_23

    .line 605
    .line 606
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 607
    .line 608
    .line 609
    move-result v8

    .line 610
    if-eqz v8, :cond_23

    .line 611
    .line 612
    new-instance v5, Landroidx/media3/extractor/text/ttml/TextEmphasis;

    .line 613
    .line 614
    const/4 v7, -0x1

    .line 615
    invoke-direct {v5, v7, v3, v6}, Landroidx/media3/extractor/text/ttml/TextEmphasis;-><init>(III)V

    .line 616
    .line 617
    .line 618
    goto :goto_10

    .line 619
    :cond_23
    const-string v8, "filled"

    .line 620
    .line 621
    invoke-static {v7, v8}, Lcom/google/common/collect/Iterables;->a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v7

    .line 625
    check-cast v7, Ljava/lang/String;

    .line 626
    .line 627
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 628
    .line 629
    .line 630
    move-result v9

    .line 631
    const v10, -0x4bf7529e

    .line 632
    .line 633
    .line 634
    if-eq v9, v10, :cond_25

    .line 635
    .line 636
    const v8, 0x34264a

    .line 637
    .line 638
    .line 639
    if-eq v9, v8, :cond_24

    .line 640
    .line 641
    goto :goto_c

    .line 642
    :cond_24
    const-string v8, "open"

    .line 643
    .line 644
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    move-result v7

    .line 648
    if-eqz v7, :cond_26

    .line 649
    .line 650
    const/4 v7, 0x2

    .line 651
    goto :goto_d

    .line 652
    :cond_25
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    move-result v7

    .line 656
    :cond_26
    :goto_c
    const/4 v7, 0x1

    .line 657
    :goto_d
    const-string v8, "circle"

    .line 658
    .line 659
    invoke-static {v5, v8}, Lcom/google/common/collect/Iterables;->a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v5

    .line 663
    check-cast v5, Ljava/lang/String;

    .line 664
    .line 665
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 666
    .line 667
    .line 668
    move-result v9

    .line 669
    const v10, -0x51134330

    .line 670
    .line 671
    .line 672
    if-eq v9, v10, :cond_29

    .line 673
    .line 674
    const v8, -0x35fdaa48    # -2135406.0f

    .line 675
    .line 676
    .line 677
    if-eq v9, v8, :cond_28

    .line 678
    .line 679
    const v8, 0x18549

    .line 680
    .line 681
    .line 682
    if-eq v9, v8, :cond_27

    .line 683
    .line 684
    goto :goto_e

    .line 685
    :cond_27
    const-string v8, "dot"

    .line 686
    .line 687
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    move-result v5

    .line 691
    if-eqz v5, :cond_2a

    .line 692
    .line 693
    const/4 v11, 0x2

    .line 694
    goto :goto_f

    .line 695
    :cond_28
    const-string v8, "sesame"

    .line 696
    .line 697
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 698
    .line 699
    .line 700
    move-result v5

    .line 701
    if-eqz v5, :cond_2a

    .line 702
    .line 703
    const/4 v11, 0x3

    .line 704
    goto :goto_f

    .line 705
    :cond_29
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 706
    .line 707
    .line 708
    move-result v5

    .line 709
    :cond_2a
    :goto_e
    const/4 v11, 0x1

    .line 710
    :goto_f
    new-instance v5, Landroidx/media3/extractor/text/ttml/TextEmphasis;

    .line 711
    .line 712
    invoke-direct {v5, v11, v7, v6}, Landroidx/media3/extractor/text/ttml/TextEmphasis;-><init>(III)V

    .line 713
    .line 714
    .line 715
    :goto_10
    iput-object v5, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->r:Landroidx/media3/extractor/text/ttml/TextEmphasis;

    .line 716
    .line 717
    goto/16 :goto_1a

    .line 718
    .line 719
    :pswitch_8
    :try_start_1
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    invoke-static {v5, v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->f(Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlStyle;)V
    :try_end_1
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 724
    .line 725
    .line 726
    goto/16 :goto_1a

    .line 727
    .line 728
    :catch_1
    const-string v6, "Failed parsing fontSize value: "

    .line 729
    .line 730
    invoke-static {v6, v5, v13}, Lq;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    goto/16 :goto_1a

    .line 734
    .line 735
    :pswitch_9
    invoke-static {v5}, Lcom/google/common/base/Ascii;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v5

    .line 739
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 740
    .line 741
    .line 742
    const-string v6, "all"

    .line 743
    .line 744
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 745
    .line 746
    .line 747
    move-result v6

    .line 748
    if-nez v6, :cond_2c

    .line 749
    .line 750
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result v5

    .line 754
    if-nez v5, :cond_2b

    .line 755
    .line 756
    goto/16 :goto_1a

    .line 757
    .line 758
    :cond_2b
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 759
    .line 760
    .line 761
    move-result-object v0

    .line 762
    iput v3, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->q:I

    .line 763
    .line 764
    goto/16 :goto_1a

    .line 765
    .line 766
    :cond_2c
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 767
    .line 768
    .line 769
    move-result-object v0

    .line 770
    const/4 v6, 0x1

    .line 771
    iput v6, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->q:I

    .line 772
    .line 773
    goto/16 :goto_1a

    .line 774
    .line 775
    :pswitch_a
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 776
    .line 777
    .line 778
    move-result-object v6

    .line 779
    sget-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->e:Ljava/util/regex/Pattern;

    .line 780
    .line 781
    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 786
    .line 787
    .line 788
    move-result v7

    .line 789
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    .line 790
    .line 791
    .line 792
    if-nez v7, :cond_2d

    .line 793
    .line 794
    const-string v0, "Invalid value for shear: "

    .line 795
    .line 796
    invoke-static {v0, v5, v13}, Lq;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    .line 798
    .line 799
    goto :goto_11

    .line 800
    :cond_2d
    const/4 v7, 0x1

    .line 801
    :try_start_2
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 806
    .line 807
    .line 808
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 809
    .line 810
    .line 811
    move-result v0

    .line 812
    const/high16 v7, -0x3d380000    # -100.0f

    .line 813
    .line 814
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    .line 815
    .line 816
    .line 817
    move-result v0

    .line 818
    const/high16 v7, 0x42c80000    # 100.0f

    .line 819
    .line 820
    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    .line 821
    .line 822
    .line 823
    move-result v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 824
    goto :goto_11

    .line 825
    :catch_2
    move-exception v0

    .line 826
    new-instance v7, Ljava/lang/StringBuilder;

    .line 827
    .line 828
    const-string v9, "Failed to parse shear: "

    .line 829
    .line 830
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    .line 835
    .line 836
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v5

    .line 840
    invoke-static {v13, v5, v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 841
    .line 842
    .line 843
    :goto_11
    iput v8, v6, Landroidx/media3/extractor/text/ttml/TtmlStyle;->s:F

    .line 844
    .line 845
    move-object v0, v6

    .line 846
    goto/16 :goto_1a

    .line 847
    .line 848
    :pswitch_b
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 849
    .line 850
    .line 851
    move-result-object v0

    .line 852
    :try_start_3
    invoke-static {v5, v3}, Landroidx/media3/common/util/ColorParser;->a(Ljava/lang/String;Z)I

    .line 853
    .line 854
    .line 855
    move-result v6

    .line 856
    iput v6, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->b:I

    .line 857
    .line 858
    const/4 v6, 0x1

    .line 859
    iput-boolean v6, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->c:Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 860
    .line 861
    goto/16 :goto_1a

    .line 862
    .line 863
    :catch_3
    const-string v6, "Failed parsing color value: "

    .line 864
    .line 865
    invoke-static {v6, v5, v13}, Lq;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    goto/16 :goto_1a

    .line 869
    .line 870
    :pswitch_c
    const/4 v7, -0x1

    .line 871
    invoke-static {v5}, Lcom/google/common/base/Ascii;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v5

    .line 875
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 876
    .line 877
    .line 878
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 879
    .line 880
    .line 881
    move-result v6

    .line 882
    sparse-switch v6, :sswitch_data_2

    .line 883
    .line 884
    .line 885
    :goto_12
    move v8, v7

    .line 886
    goto :goto_13

    .line 887
    :sswitch_17
    const-string v6, "text"

    .line 888
    .line 889
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 890
    .line 891
    .line 892
    move-result v5

    .line 893
    if-nez v5, :cond_2e

    .line 894
    .line 895
    goto :goto_12

    .line 896
    :cond_2e
    const/4 v8, 0x5

    .line 897
    goto :goto_13

    .line 898
    :sswitch_18
    const-string v6, "base"

    .line 899
    .line 900
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 901
    .line 902
    .line 903
    move-result v5

    .line 904
    if-nez v5, :cond_2f

    .line 905
    .line 906
    goto :goto_12

    .line 907
    :cond_2f
    const/4 v8, 0x4

    .line 908
    goto :goto_13

    .line 909
    :sswitch_19
    const-string v6, "textContainer"

    .line 910
    .line 911
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 912
    .line 913
    .line 914
    move-result v5

    .line 915
    if-nez v5, :cond_30

    .line 916
    .line 917
    goto :goto_12

    .line 918
    :cond_30
    const/4 v8, 0x3

    .line 919
    goto :goto_13

    .line 920
    :sswitch_1a
    const-string v6, "delimiter"

    .line 921
    .line 922
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 923
    .line 924
    .line 925
    move-result v5

    .line 926
    if-nez v5, :cond_31

    .line 927
    .line 928
    goto :goto_12

    .line 929
    :cond_31
    const/4 v8, 0x2

    .line 930
    goto :goto_13

    .line 931
    :sswitch_1b
    const-string v6, "container"

    .line 932
    .line 933
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 934
    .line 935
    .line 936
    move-result v5

    .line 937
    if-nez v5, :cond_32

    .line 938
    .line 939
    goto :goto_12

    .line 940
    :cond_32
    const/4 v8, 0x1

    .line 941
    goto :goto_13

    .line 942
    :sswitch_1c
    const-string v6, "baseContainer"

    .line 943
    .line 944
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 945
    .line 946
    .line 947
    move-result v5

    .line 948
    if-nez v5, :cond_33

    .line 949
    .line 950
    goto :goto_12

    .line 951
    :cond_33
    move v8, v3

    .line 952
    :goto_13
    packed-switch v8, :pswitch_data_2

    .line 953
    .line 954
    .line 955
    goto/16 :goto_1a

    .line 956
    .line 957
    :pswitch_d
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    const/4 v6, 0x3

    .line 962
    iput v6, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->m:I

    .line 963
    .line 964
    goto/16 :goto_1a

    .line 965
    .line 966
    :pswitch_e
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 967
    .line 968
    .line 969
    move-result-object v0

    .line 970
    const/4 v13, 0x4

    .line 971
    iput v13, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->m:I

    .line 972
    .line 973
    goto/16 :goto_1a

    .line 974
    .line 975
    :pswitch_f
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 976
    .line 977
    .line 978
    move-result-object v0

    .line 979
    const/4 v6, 0x1

    .line 980
    iput v6, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->m:I

    .line 981
    .line 982
    goto/16 :goto_1a

    .line 983
    .line 984
    :pswitch_10
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 985
    .line 986
    .line 987
    move-result-object v0

    .line 988
    const/4 v14, 0x2

    .line 989
    iput v14, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->m:I

    .line 990
    .line 991
    goto/16 :goto_1a

    .line 992
    .line 993
    :pswitch_11
    const-string v6, "style"

    .line 994
    .line 995
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v7

    .line 999
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1000
    .line 1001
    .line 1002
    move-result v6

    .line 1003
    if-eqz v6, :cond_3d

    .line 1004
    .line 1005
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v0

    .line 1009
    iput-object v5, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->l:Ljava/lang/String;

    .line 1010
    .line 1011
    goto/16 :goto_1a

    .line 1012
    .line 1013
    :pswitch_12
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v0

    .line 1017
    const-string v6, "bold"

    .line 1018
    .line 1019
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1020
    .line 1021
    .line 1022
    move-result v5

    .line 1023
    iput v5, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->h:I

    .line 1024
    .line 1025
    goto/16 :goto_1a

    .line 1026
    .line 1027
    :pswitch_13
    const/4 v6, 0x3

    .line 1028
    const/4 v7, -0x1

    .line 1029
    const/4 v14, 0x2

    .line 1030
    invoke-static {v5}, Lcom/google/common/base/Ascii;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v5

    .line 1034
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 1038
    .line 1039
    .line 1040
    move-result v8

    .line 1041
    sparse-switch v8, :sswitch_data_3

    .line 1042
    .line 1043
    .line 1044
    :goto_14
    move v10, v7

    .line 1045
    goto :goto_15

    .line 1046
    :sswitch_1d
    const-string v8, "linethrough"

    .line 1047
    .line 1048
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1049
    .line 1050
    .line 1051
    move-result v5

    .line 1052
    if-nez v5, :cond_34

    .line 1053
    .line 1054
    goto :goto_14

    .line 1055
    :cond_34
    move v10, v6

    .line 1056
    goto :goto_15

    .line 1057
    :sswitch_1e
    const-string v6, "nolinethrough"

    .line 1058
    .line 1059
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1060
    .line 1061
    .line 1062
    move-result v5

    .line 1063
    if-nez v5, :cond_35

    .line 1064
    .line 1065
    goto :goto_14

    .line 1066
    :cond_35
    move v10, v14

    .line 1067
    goto :goto_15

    .line 1068
    :sswitch_1f
    const-string v6, "underline"

    .line 1069
    .line 1070
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1071
    .line 1072
    .line 1073
    move-result v5

    .line 1074
    if-nez v5, :cond_36

    .line 1075
    .line 1076
    goto :goto_14

    .line 1077
    :cond_36
    const/4 v10, 0x1

    .line 1078
    goto :goto_15

    .line 1079
    :sswitch_20
    const-string v6, "nounderline"

    .line 1080
    .line 1081
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1082
    .line 1083
    .line 1084
    move-result v5

    .line 1085
    if-nez v5, :cond_37

    .line 1086
    .line 1087
    goto :goto_14

    .line 1088
    :cond_37
    move v10, v3

    .line 1089
    :goto_15
    packed-switch v10, :pswitch_data_3

    .line 1090
    .line 1091
    .line 1092
    goto/16 :goto_1a

    .line 1093
    .line 1094
    :pswitch_14
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v0

    .line 1098
    const/4 v15, 0x1

    .line 1099
    iput v15, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->f:I

    .line 1100
    .line 1101
    goto/16 :goto_1a

    .line 1102
    .line 1103
    :pswitch_15
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v0

    .line 1107
    iput v3, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->f:I

    .line 1108
    .line 1109
    goto/16 :goto_1a

    .line 1110
    .line 1111
    :pswitch_16
    const/4 v15, 0x1

    .line 1112
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v0

    .line 1116
    iput v15, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->g:I

    .line 1117
    .line 1118
    goto/16 :goto_1a

    .line 1119
    .line 1120
    :pswitch_17
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v0

    .line 1124
    iput v3, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->g:I

    .line 1125
    .line 1126
    goto/16 :goto_1a

    .line 1127
    .line 1128
    :pswitch_18
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v0

    .line 1132
    iput-object v5, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->t:Ljava/lang/String;

    .line 1133
    .line 1134
    goto/16 :goto_1a

    .line 1135
    .line 1136
    :pswitch_19
    const/4 v6, 0x3

    .line 1137
    const/4 v7, -0x1

    .line 1138
    const/4 v13, 0x4

    .line 1139
    const/4 v14, 0x2

    .line 1140
    const/4 v15, 0x1

    .line 1141
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v0

    .line 1145
    invoke-static {v5}, Lcom/google/common/base/Ascii;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v5

    .line 1149
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1150
    .line 1151
    .line 1152
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 1153
    .line 1154
    .line 1155
    move-result v16

    .line 1156
    sparse-switch v16, :sswitch_data_4

    .line 1157
    .line 1158
    .line 1159
    :goto_16
    move v9, v7

    .line 1160
    goto :goto_17

    .line 1161
    :sswitch_21
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1162
    .line 1163
    .line 1164
    move-result v5

    .line 1165
    if-nez v5, :cond_38

    .line 1166
    .line 1167
    goto :goto_16

    .line 1168
    :cond_38
    move v9, v13

    .line 1169
    goto :goto_17

    .line 1170
    :sswitch_22
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1171
    .line 1172
    .line 1173
    move-result v5

    .line 1174
    if-nez v5, :cond_39

    .line 1175
    .line 1176
    goto :goto_16

    .line 1177
    :cond_39
    move v9, v6

    .line 1178
    goto :goto_17

    .line 1179
    :sswitch_23
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1180
    .line 1181
    .line 1182
    move-result v5

    .line 1183
    if-nez v5, :cond_3a

    .line 1184
    .line 1185
    goto :goto_16

    .line 1186
    :cond_3a
    move v9, v14

    .line 1187
    goto :goto_17

    .line 1188
    :sswitch_24
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1189
    .line 1190
    .line 1191
    move-result v5

    .line 1192
    if-nez v5, :cond_3b

    .line 1193
    .line 1194
    goto :goto_16

    .line 1195
    :cond_3b
    move v9, v15

    .line 1196
    goto :goto_17

    .line 1197
    :sswitch_25
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1198
    .line 1199
    .line 1200
    move-result v5

    .line 1201
    if-nez v5, :cond_3c

    .line 1202
    .line 1203
    goto :goto_16

    .line 1204
    :cond_3c
    move v9, v3

    .line 1205
    :goto_17
    packed-switch v9, :pswitch_data_4

    .line 1206
    .line 1207
    .line 1208
    :goto_18
    move-object/from16 v5, v17

    .line 1209
    .line 1210
    goto :goto_19

    .line 1211
    :pswitch_1a
    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 1212
    .line 1213
    goto :goto_18

    .line 1214
    :pswitch_1b
    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 1215
    .line 1216
    goto :goto_18

    .line 1217
    :pswitch_1c
    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1218
    .line 1219
    goto :goto_18

    .line 1220
    :goto_19
    iput-object v5, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->o:Landroid/text/Layout$Alignment;

    .line 1221
    .line 1222
    goto :goto_1a

    .line 1223
    :pswitch_1d
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v0

    .line 1227
    iput-object v5, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->a:Ljava/lang/String;

    .line 1228
    .line 1229
    goto :goto_1a

    .line 1230
    :pswitch_1e
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v0

    .line 1234
    iput-object v5, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->u:Ljava/lang/String;

    .line 1235
    .line 1236
    goto :goto_1a

    .line 1237
    :pswitch_1f
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->c(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v0

    .line 1241
    const-string v6, "italic"

    .line 1242
    .line 1243
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1244
    .line 1245
    .line 1246
    move-result v5

    .line 1247
    iput v5, v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->i:I

    .line 1248
    .line 1249
    :cond_3d
    :goto_1a
    add-int/lit8 v4, v4, 0x1

    .line 1250
    .line 1251
    goto/16 :goto_0

    .line 1252
    .line 1253
    :cond_3e
    return-object v0

    .line 1254
    nop

    .line 1255
    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_11
        -0x4cd540d6 -> :sswitch_10
        -0x48ff636d -> :sswitch_f
        -0x3f826a28 -> :sswitch_e
        -0x3c1e50da -> :sswitch_d
        -0x3468fa43 -> :sswitch_c
        -0x2bc67c59 -> :sswitch_b
        0xd1b -> :sswitch_a
        0x3595da -> :sswitch_9
        0x5a72f63 -> :sswitch_8
        0x6855ce1 -> :sswitch_7
        0x6909352 -> :sswitch_6
        0x15caa0f0 -> :sswitch_5
        0x36e741c9 -> :sswitch_4
        0x42841923 -> :sswitch_3
        0x4cb7f6d5 -> :sswitch_2
        0x5e9cb763 -> :sswitch_1
        0x6899f5a4 -> :sswitch_0
    .end sparse-switch

    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_19
        :pswitch_18
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_16
        0x188db -> :sswitch_15
        0x32a007 -> :sswitch_14
        0x677c21c -> :sswitch_13
        0x68ac462 -> :sswitch_12
    .end sparse-switch

    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    :sswitch_data_2
    .sparse-switch
        -0x24de7f50 -> :sswitch_1c
        -0x187eb37f -> :sswitch_1b
        -0xeee99f9 -> :sswitch_1a
        -0x81c562c -> :sswitch_19
        0x2e06d1 -> :sswitch_18
        0x36452d -> :sswitch_17
    .end sparse-switch

    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_10
        :pswitch_d
    .end packed-switch

    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    :sswitch_data_3
    .sparse-switch
        -0x57195dd5 -> :sswitch_20
        -0x3d363934 -> :sswitch_1f
        0x36723ff0 -> :sswitch_1e
        0x641ec051 -> :sswitch_1d
    .end sparse-switch

    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    :sswitch_data_4
    .sparse-switch
        -0x514d33ab -> :sswitch_25
        0x188db -> :sswitch_24
        0x32a007 -> :sswitch_23
        0x677c21c -> :sswitch_22
        0x68ac462 -> :sswitch_21
    .end sparse-switch

    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public static k(Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;)J
    .locals 13

    .line 1
    sget-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->b:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x4

    .line 12
    const/4 v3, 0x3

    .line 13
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const/4 v6, 0x2

    .line 19
    const/4 v7, 0x1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v7

    .line 33
    const-wide/16 v9, 0xe10

    .line 34
    .line 35
    mul-long/2addr v7, v9

    .line 36
    long-to-double v7, v7

    .line 37
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v9

    .line 48
    const-wide/16 v11, 0x3c

    .line 49
    .line 50
    mul-long/2addr v9, v11

    .line 51
    long-to-double v9, v9

    .line 52
    add-double/2addr v7, v9

    .line 53
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v9

    .line 64
    long-to-double v9, v9

    .line 65
    add-double/2addr v7, v9

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-wide/16 v1, 0x0

    .line 71
    .line 72
    if-eqz p0, :cond_0

    .line 73
    .line 74
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 75
    .line 76
    .line 77
    move-result-wide v9

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    move-wide v9, v1

    .line 80
    :goto_0
    add-double/2addr v7, v9

    .line 81
    const/4 p0, 0x5

    .line 82
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    if-eqz p0, :cond_1

    .line 87
    .line 88
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v9

    .line 92
    long-to-float p0, v9

    .line 93
    iget v3, p1, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->a:F

    .line 94
    .line 95
    div-float/2addr p0, v3

    .line 96
    float-to-double v9, p0

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    move-wide v9, v1

    .line 99
    :goto_1
    add-double/2addr v7, v9

    .line 100
    const/4 p0, 0x6

    .line 101
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    if-eqz p0, :cond_2

    .line 106
    .line 107
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    long-to-double v0, v0

    .line 112
    iget p0, p1, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->b:I

    .line 113
    .line 114
    int-to-double v2, p0

    .line 115
    div-double/2addr v0, v2

    .line 116
    iget p0, p1, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->a:F

    .line 117
    .line 118
    float-to-double p0, p0

    .line 119
    div-double v1, v0, p0

    .line 120
    .line 121
    :cond_2
    add-double/2addr v7, v1

    .line 122
    mul-double/2addr v7, v4

    .line 123
    double-to-long p0, v7

    .line 124
    return-wide p0

    .line 125
    :cond_3
    sget-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->c:Ljava/util/regex/Pattern;

    .line 126
    .line 127
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_9

    .line 136
    .line 137
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 145
    .line 146
    .line 147
    move-result-wide v8

    .line 148
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    const/4 v1, -0x1

    .line 160
    sparse-switch v0, :sswitch_data_0

    .line 161
    .line 162
    .line 163
    :goto_2
    move v2, v1

    .line 164
    goto :goto_3

    .line 165
    :sswitch_0
    const-string v0, "ms"

    .line 166
    .line 167
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    if-nez p0, :cond_8

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :sswitch_1
    const-string v0, "t"

    .line 175
    .line 176
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    if-nez p0, :cond_4

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_4
    move v2, v3

    .line 184
    goto :goto_3

    .line 185
    :sswitch_2
    const-string v0, "m"

    .line 186
    .line 187
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    if-nez p0, :cond_5

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_5
    move v2, v6

    .line 195
    goto :goto_3

    .line 196
    :sswitch_3
    const-string v0, "h"

    .line 197
    .line 198
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    if-nez p0, :cond_6

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_6
    move v2, v7

    .line 206
    goto :goto_3

    .line 207
    :sswitch_4
    const-string v0, "f"

    .line 208
    .line 209
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    if-nez p0, :cond_7

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_7
    const/4 v2, 0x0

    .line 217
    :cond_8
    :goto_3
    packed-switch v2, :pswitch_data_0

    .line 218
    .line 219
    .line 220
    goto :goto_6

    .line 221
    :pswitch_0
    const-wide p0, 0x408f400000000000L    # 1000.0

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    :goto_4
    div-double/2addr v8, p0

    .line 227
    goto :goto_6

    .line 228
    :pswitch_1
    iget p0, p1, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->c:I

    .line 229
    .line 230
    int-to-double p0, p0

    .line 231
    goto :goto_4

    .line 232
    :pswitch_2
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    .line 233
    .line 234
    :goto_5
    mul-double/2addr v8, p0

    .line 235
    goto :goto_6

    .line 236
    :pswitch_3
    const-wide p0, 0x40ac200000000000L    # 3600.0

    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    goto :goto_5

    .line 242
    :pswitch_4
    iget p0, p1, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->a:F

    .line 243
    .line 244
    float-to-double p0, p0

    .line 245
    goto :goto_4

    .line 246
    :goto_6
    mul-double/2addr v8, v4

    .line 247
    double-to-long p0, v8

    .line 248
    return-wide p0

    .line 249
    :cond_9
    new-instance p1, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 250
    .line 251
    const-string v0, "Malformed time expression: "

    .line 252
    .line 253
    invoke-static {v0, p0}, Ljb;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw p1

    .line 261
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6d -> :sswitch_2
        0x74 -> :sswitch_1
        0xda6 -> :sswitch_0
    .end sparse-switch

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static l(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;
    .locals 5

    .line 1
    const-string v0, "extent"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    sget-object v1, Landroidx/media3/extractor/text/ttml/TtmlParser;->g:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, "TtmlParser"

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    const-string v1, "Ignoring non-pixel tts extent: "

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v3, p0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    const/4 v2, 0x1

    .line 36
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v4, 0x2

    .line 48
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    new-instance v4, Landroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;

    .line 60
    .line 61
    invoke-direct {v4, v2, v1}, Landroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    return-object v4

    .line 65
    :catch_0
    const-string v1, "Ignoring malformed tts extent: "

    .line 66
    .line 67
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {v3, p0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-object v0
.end method


# virtual methods
.method public final a([BII)Landroidx/media3/extractor/text/Subtitle;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->a:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v5, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v6, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, ""

    .line 25
    .line 26
    new-instance v7, Landroidx/media3/extractor/text/ttml/TtmlRegion;

    .line 27
    .line 28
    const-string v8, ""

    .line 29
    .line 30
    const v16, -0x800001

    .line 31
    .line 32
    .line 33
    const/high16 v17, -0x80000000

    .line 34
    .line 35
    const v9, -0x800001

    .line 36
    .line 37
    .line 38
    const v10, -0x800001

    .line 39
    .line 40
    .line 41
    const/high16 v11, -0x80000000

    .line 42
    .line 43
    const/high16 v12, -0x80000000

    .line 44
    .line 45
    const v13, -0x800001

    .line 46
    .line 47
    .line 48
    const v14, -0x800001

    .line 49
    .line 50
    .line 51
    const/high16 v15, -0x80000000

    .line 52
    .line 53
    invoke-direct/range {v7 .. v17}, Landroidx/media3/extractor/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;FFIIFFIFI)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 60
    .line 61
    move-object/from16 v3, p1

    .line 62
    .line 63
    move/from16 v4, p2

    .line 64
    .line 65
    move/from16 v7, p3

    .line 66
    .line 67
    invoke-direct {v0, v3, v4, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 68
    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-interface {v1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v7, Ljava/util/ArrayDeque;

    .line 75
    .line 76
    invoke-direct {v7}, Ljava/util/ArrayDeque;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    sget-object v4, Landroidx/media3/extractor/text/ttml/TtmlParser;->i:Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

    .line 84
    .line 85
    const/16 v8, 0xf

    .line 86
    .line 87
    const/4 v9, 0x0

    .line 88
    move v10, v9

    .line 89
    move v9, v8

    .line 90
    move-object v8, v3

    .line 91
    :goto_0
    const/4 v11, 0x1

    .line 92
    if-eq v0, v11, :cond_c

    .line 93
    .line 94
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    check-cast v11, Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 99
    .line 100
    const/4 v12, 0x3

    .line 101
    const/4 v13, 0x2

    .line 102
    if-nez v10, :cond_9

    .line 103
    .line 104
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v14
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    const-string v15, "tt"

    .line 109
    .line 110
    if-ne v0, v13, :cond_5

    .line 111
    .line 112
    :try_start_1
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    .line 118
    invoke-static {v1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->g(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-static {v1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    invoke-static {v1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->l(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    :cond_0
    move-object/from16 v18, v4

    .line 131
    .line 132
    move-object v4, v3

    .line 133
    move v3, v9

    .line 134
    move-object/from16 v9, v18

    .line 135
    .line 136
    invoke-static {v14}, Landroidx/media3/extractor/text/ttml/TtmlParser;->d(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    const-string v12, "TtmlParser"

    .line 141
    .line 142
    if-nez v0, :cond_2

    .line 143
    .line 144
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v11, "Ignoring unsupported tag: "

    .line 150
    .line 151
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v11

    .line 158
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v12, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :goto_1
    add-int/lit8 v10, v10, 0x1

    .line 169
    .line 170
    :cond_1
    :goto_2
    move-object/from16 v18, v9

    .line 171
    .line 172
    move v9, v3

    .line 173
    move-object v3, v4

    .line 174
    move-object/from16 v4, v18

    .line 175
    .line 176
    goto/16 :goto_3

    .line 177
    .line 178
    :cond_2
    const-string v0, "head"

    .line 179
    .line 180
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_3

    .line 185
    .line 186
    invoke-static/range {v1 .. v6}, Landroidx/media3/extractor/text/ttml/TtmlParser;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;ILandroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_3
    :try_start_3
    invoke-static {v1, v11, v5, v9}, Landroidx/media3/extractor/text/ttml/TtmlParser;->i(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/HashMap;Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;)Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v7, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    if-eqz v11, :cond_1

    .line 198
    .line 199
    iget-object v13, v11, Landroidx/media3/extractor/text/ttml/TtmlNode;->m:Ljava/util/ArrayList;

    .line 200
    .line 201
    if-nez v13, :cond_4

    .line 202
    .line 203
    new-instance v13, Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .line 207
    .line 208
    iput-object v13, v11, Landroidx/media3/extractor/text/ttml/TtmlNode;->m:Ljava/util/ArrayList;

    .line 209
    .line 210
    :cond_4
    iget-object v11, v11, Landroidx/media3/extractor/text/ttml/TtmlNode;->m:Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :catch_0
    move-exception v0

    .line 217
    :try_start_4
    const-string v11, "Suppressing parser error"

    .line 218
    .line 219
    invoke-static {v12, v11, v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_5
    const/4 v13, 0x4

    .line 224
    if-ne v0, v13, :cond_7

    .line 225
    .line 226
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlNode;->a(Ljava/lang/String;)Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    iget-object v12, v11, Landroidx/media3/extractor/text/ttml/TtmlNode;->m:Ljava/util/ArrayList;

    .line 238
    .line 239
    if-nez v12, :cond_6

    .line 240
    .line 241
    new-instance v12, Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .line 245
    .line 246
    iput-object v12, v11, Landroidx/media3/extractor/text/ttml/TtmlNode;->m:Ljava/util/ArrayList;

    .line 247
    .line 248
    :cond_6
    iget-object v11, v11, Landroidx/media3/extractor/text/ttml/TtmlNode;->m:Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_7
    if-ne v0, v12, :cond_b

    .line 255
    .line 256
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_8

    .line 265
    .line 266
    new-instance v8, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;

    .line 267
    .line 268
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    invoke-direct {v8, v0, v2, v5, v6}, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;-><init>(Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 278
    .line 279
    .line 280
    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    goto :goto_3

    .line 284
    :cond_9
    if-ne v0, v13, :cond_a

    .line 285
    .line 286
    add-int/lit8 v10, v10, 0x1

    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_a
    if-ne v0, v12, :cond_b

    .line 290
    .line 291
    add-int/lit8 v10, v10, -0x1

    .line 292
    .line 293
    :cond_b
    :goto_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 294
    .line 295
    .line 296
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    goto/16 :goto_0

    .line 301
    .line 302
    :cond_c
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 303
    .line 304
    .line 305
    return-object v8

    .line 306
    :catch_1
    move-exception v0

    .line 307
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 308
    .line 309
    const-string v2, "Unexpected error when reading input."

    .line 310
    .line 311
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    .line 313
    .line 314
    throw v1

    .line 315
    :catch_2
    move-exception v0

    .line 316
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 317
    .line 318
    const-string v2, "Unable to decode source"

    .line 319
    .line 320
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 321
    .line 322
    .line 323
    throw v1
.end method

.method public final b([BIILandroidx/media3/common/util/Consumer;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/extractor/text/ttml/TtmlParser;->a([BII)Landroidx/media3/extractor/text/Subtitle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    :goto_0
    move-object p2, p0

    .line 7
    check-cast p2, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;

    .line 8
    .line 9
    invoke-virtual {p2}, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->d()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-ge p1, p3, :cond_3

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->b(I)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-virtual {p2, v1, v2}, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->c(J)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    move-object p3, v5

    .line 24
    check-cast p3, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {p2}, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->d()I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    add-int/lit8 p3, p3, -0x1

    .line 38
    .line 39
    if-eq p1, p3, :cond_2

    .line 40
    .line 41
    add-int/lit8 p3, p1, 0x1

    .line 42
    .line 43
    invoke-virtual {p2, p3}, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->b(I)J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    invoke-virtual {p2, p1}, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->b(I)J

    .line 48
    .line 49
    .line 50
    move-result-wide p2

    .line 51
    sub-long/2addr v3, p2

    .line 52
    const-wide/16 p2, 0x0

    .line 53
    .line 54
    cmp-long p2, v3, p2

    .line 55
    .line 56
    if-lez p2, :cond_1

    .line 57
    .line 58
    new-instance v0, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 59
    .line 60
    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(JJLjava/util/List;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p4, v0}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-static {}, Lio/sentry/d;->d()V

    .line 70
    .line 71
    .line 72
    :cond_3
    return-void
.end method

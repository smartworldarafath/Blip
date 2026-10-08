.class public final Lnet/blip/android/FlavorAndroid;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lnet/blip/libblip/Flavor;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lnet/blip/libblip/SemanticVersion;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lnet/blip/libblip/SentryConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lnet/blip/android/FlavorAndroid;->a:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Lnet/blip/libblip/SemanticVersion;

    .line 17
    .line 18
    invoke-direct {v0}, Lnet/blip/libblip/SemanticVersion;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lnet/blip/android/FlavorAndroid;->b:Lnet/blip/libblip/SemanticVersion;

    .line 22
    .line 23
    const v1, 0x7f1100d8

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lnet/blip/android/FlavorAndroid;->c:Ljava/lang/String;

    .line 34
    .line 35
    sget-object v1, Lnet/blip/libblip/LogLevel;->k:Lnet/blip/libblip/LogLevel;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lnet/blip/android/FlavorAndroid;->d:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lnet/blip/android/FlavorAndroid;->e:Ljava/lang/String;

    .line 62
    .line 63
    const v1, 0x7f1100d6

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    const/4 v3, 0x0

    .line 78
    if-nez v2, :cond_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    move-object v1, v3

    .line 82
    :goto_0
    if-nez v1, :cond_1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_1
    const v2, 0x7f1100d7

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-nez v2, :cond_2

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    move-object p1, v3

    .line 103
    :goto_1
    if-nez p1, :cond_3

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    invoke-virtual {v0}, Lnet/blip/libblip/SemanticVersion;->a()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v2, "net.blip.android@"

    .line 111
    .line 112
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    new-instance v2, Lr1;

    .line 117
    .line 118
    const/16 v3, 0x11

    .line 119
    .line 120
    invoke-direct {v2, v3, p0}, Lr1;-><init>(ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    new-instance v3, Lnet/blip/libblip/SentryConfig;

    .line 124
    .line 125
    invoke-direct {v3, v1, p1, v0, v2}, Lnet/blip/libblip/SentryConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lr1;)V

    .line 126
    .line 127
    .line 128
    :goto_2
    iput-object v3, p0, Lnet/blip/android/FlavorAndroid;->f:Lnet/blip/libblip/SentryConfig;

    .line 129
    .line 130
    return-void
.end method

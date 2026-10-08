.class public final synthetic Lio/sentry/android/replay/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic a:Lio/sentry/android/replay/ReplayCache;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/replay/ReplayCache;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/replay/a;->a:Lio/sentry/android/replay/ReplayCache;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, ".jpg"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p2, v0, v1}, Lkotlin/text/StringsKt;->l(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Ljava/io/File;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string p2, "."

    .line 26
    .line 27
    const/4 v2, 0x6

    .line 28
    invoke-static {p1, v2, p2}, Lkotlin/text/StringsKt;->w(Ljava/lang/String;ILjava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    const/4 v2, -0x1

    .line 33
    if-ne p2, v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :goto_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->T(Ljava/lang/String;)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 47
    .line 48
    .line 49
    move-result-wide p1

    .line 50
    iget-object p0, p0, Lio/sentry/android/replay/a;->a:Lio/sentry/android/replay/ReplayCache;

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {p0, v0, p1, p2, v2}, Lio/sentry/android/replay/ReplayCache;->a(Ljava/io/File;JLjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return v1
.end method

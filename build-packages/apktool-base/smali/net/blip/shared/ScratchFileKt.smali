.class public abstract Lnet/blip/shared/ScratchFileKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lnet/blip/shared/ScratchFileWriter;Lnet/blip/shared/InternetShortcut;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p1, Lnet/blip/shared/InternetShortcut;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p1, Lnet/blip/shared/InternetShortcut;->a:Lio/ktor/http/Url;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p1, Lio/ktor/http/Url;->j:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "Link from "

    .line 10
    .line 11
    invoke-static {v2, v1}, Ljb;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, v0

    .line 17
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, "URL="

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const-string v2, "Title="

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_1
    const-string v2, "[InternetShortcut]"

    .line 42
    .line 43
    filled-new-array {v2, p1, v0}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->p([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v6, La7;

    .line 52
    .line 53
    const/16 p1, 0x16

    .line 54
    .line 55
    invoke-direct {v6, p1}, La7;-><init>(I)V

    .line 56
    .line 57
    .line 58
    const/16 v7, 0x1e

    .line 59
    .line 60
    const-string v3, "\r\n"

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt;->y(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    sget-object v0, Lkotlin/text/Charsets;->a:Ljava/nio/charset/Charset;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    const-string v0, "url"

    .line 78
    .line 79
    invoke-virtual {p0, p1, v1, v0, p2}, Lnet/blip/shared/ScratchFileWriter;->a([BLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

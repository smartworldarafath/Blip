.class public abstract Lnet/blip/shared/Strings$Help$SendToOtherPeople;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "http://"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "https://"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "]("

    .line 19
    .line 20
    const-string v3, ") so they can join you on Blip!"

    .line 21
    .line 22
    const-string v4, "If the other person isn\u2019t on Blip yet, point them to ["

    .line 23
    .line 24
    invoke-static {v4, v1, v2, v0, v3}, Ljb;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lnet/blip/shared/Strings$Help$SendToOtherPeople;->a:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method

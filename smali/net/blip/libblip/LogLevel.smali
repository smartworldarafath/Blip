.class public final enum Lnet/blip/libblip/LogLevel;
.super Ljava/lang/Enum;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/blip/libblip/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum k:Lnet/blip/libblip/LogLevel;

.field public static final enum l:Lnet/blip/libblip/LogLevel;

.field public static final enum m:Lnet/blip/libblip/LogLevel;

.field public static final enum n:Lnet/blip/libblip/LogLevel;

.field public static final synthetic o:[Lnet/blip/libblip/LogLevel;


# instance fields
.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lnet/blip/libblip/LogLevel;

    .line 2
    .line 3
    const/4 v1, -0x4

    .line 4
    const-string v2, "DEBUG"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lnet/blip/libblip/LogLevel;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lnet/blip/libblip/LogLevel;->k:Lnet/blip/libblip/LogLevel;

    .line 11
    .line 12
    new-instance v1, Lnet/blip/libblip/LogLevel;

    .line 13
    .line 14
    const-string v2, "INFO"

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {v1, v2, v4, v3}, Lnet/blip/libblip/LogLevel;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lnet/blip/libblip/LogLevel;->l:Lnet/blip/libblip/LogLevel;

    .line 21
    .line 22
    new-instance v2, Lnet/blip/libblip/LogLevel;

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    const/4 v4, 0x4

    .line 26
    const-string v5, "WARN"

    .line 27
    .line 28
    invoke-direct {v2, v5, v3, v4}, Lnet/blip/libblip/LogLevel;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    sput-object v2, Lnet/blip/libblip/LogLevel;->m:Lnet/blip/libblip/LogLevel;

    .line 32
    .line 33
    new-instance v3, Lnet/blip/libblip/LogLevel;

    .line 34
    .line 35
    const/4 v4, 0x3

    .line 36
    const/16 v5, 0x8

    .line 37
    .line 38
    const-string v6, "ERROR"

    .line 39
    .line 40
    invoke-direct {v3, v6, v4, v5}, Lnet/blip/libblip/LogLevel;-><init>(Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    sput-object v3, Lnet/blip/libblip/LogLevel;->n:Lnet/blip/libblip/LogLevel;

    .line 44
    .line 45
    filled-new-array {v0, v1, v2, v3}, [Lnet/blip/libblip/LogLevel;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lnet/blip/libblip/LogLevel;->o:[Lnet/blip/libblip/LogLevel;

    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lnet/blip/libblip/LogLevel;->j:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/blip/libblip/LogLevel;
    .locals 1

    .line 1
    const-class v0, Lnet/blip/libblip/LogLevel;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/blip/libblip/LogLevel;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/blip/libblip/LogLevel;
    .locals 1

    .line 1
    sget-object v0, Lnet/blip/libblip/LogLevel;->o:[Lnet/blip/libblip/LogLevel;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/blip/libblip/LogLevel;

    .line 8
    .line 9
    return-object v0
.end method

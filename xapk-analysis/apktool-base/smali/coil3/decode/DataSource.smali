.class public final enum Lcoil3/decode/DataSource;
.super Ljava/lang/Enum;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcoil3/decode/DataSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum j:Lcoil3/decode/DataSource;

.field public static final enum k:Lcoil3/decode/DataSource;

.field public static final enum l:Lcoil3/decode/DataSource;

.field public static final enum m:Lcoil3/decode/DataSource;

.field public static final synthetic n:[Lcoil3/decode/DataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcoil3/decode/DataSource;

    .line 2
    .line 3
    const-string v1, "MEMORY_CACHE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcoil3/decode/DataSource;->j:Lcoil3/decode/DataSource;

    .line 10
    .line 11
    new-instance v1, Lcoil3/decode/DataSource;

    .line 12
    .line 13
    const-string v2, "MEMORY"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcoil3/decode/DataSource;->k:Lcoil3/decode/DataSource;

    .line 20
    .line 21
    new-instance v2, Lcoil3/decode/DataSource;

    .line 22
    .line 23
    const-string v3, "DISK"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcoil3/decode/DataSource;->l:Lcoil3/decode/DataSource;

    .line 30
    .line 31
    new-instance v3, Lcoil3/decode/DataSource;

    .line 32
    .line 33
    const-string v4, "NETWORK"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcoil3/decode/DataSource;->m:Lcoil3/decode/DataSource;

    .line 40
    .line 41
    filled-new-array {v0, v1, v2, v3}, [Lcoil3/decode/DataSource;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcoil3/decode/DataSource;->n:[Lcoil3/decode/DataSource;

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcoil3/decode/DataSource;
    .locals 1

    .line 1
    const-class v0, Lcoil3/decode/DataSource;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcoil3/decode/DataSource;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcoil3/decode/DataSource;
    .locals 1

    .line 1
    sget-object v0, Lcoil3/decode/DataSource;->n:[Lcoil3/decode/DataSource;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcoil3/decode/DataSource;

    .line 8
    .line 9
    return-object v0
.end method

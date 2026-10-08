.class public final enum Lcom/abovevacant/epitaph/core/MemoryError$Tool;
.super Ljava/lang/Enum;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/abovevacant/epitaph/core/MemoryError$Tool;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic k:[Lcom/abovevacant/epitaph/core/MemoryError$Tool;


# instance fields
.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    .line 2
    .line 3
    const-string v1, "GWP_ASAN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/abovevacant/epitaph/core/MemoryError$Tool;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    .line 10
    .line 11
    const-string v2, "SCUDO"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3, v3}, Lcom/abovevacant/epitaph/core/MemoryError$Tool;-><init>(Ljava/lang/String;II)V

    .line 15
    .line 16
    .line 17
    filled-new-array {v0, v1}, [Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/abovevacant/epitaph/core/MemoryError$Tool;->k:[Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/abovevacant/epitaph/core/MemoryError$Tool;->j:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/abovevacant/epitaph/core/MemoryError$Tool;
    .locals 1

    .line 1
    const-class v0, Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/abovevacant/epitaph/core/MemoryError$Tool;
    .locals 1

    .line 1
    sget-object v0, Lcom/abovevacant/epitaph/core/MemoryError$Tool;->k:[Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/abovevacant/epitaph/core/MemoryError$Tool;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    .line 8
    .line 9
    return-object v0
.end method

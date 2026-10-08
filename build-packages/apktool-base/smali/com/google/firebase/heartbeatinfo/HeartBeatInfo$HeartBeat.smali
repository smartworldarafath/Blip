.class public final enum Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
.super Ljava/lang/Enum;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeartBeat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum k:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

.field public static final enum l:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

.field public static final synthetic m:[Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;


# instance fields
.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->k:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 10
    .line 11
    new-instance v1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 12
    .line 13
    const-string v2, "SDK"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 20
    .line 21
    const-string v3, "GLOBAL"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v3, v4, v4}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;-><init>(Ljava/lang/String;II)V

    .line 25
    .line 26
    .line 27
    sput-object v2, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->l:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 28
    .line 29
    new-instance v3, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 30
    .line 31
    const-string v4, "COMBINED"

    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    invoke-direct {v3, v4, v5, v5}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;-><init>(Ljava/lang/String;II)V

    .line 35
    .line 36
    .line 37
    filled-new-array {v0, v1, v2, v3}, [Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->m:[Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->j:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
    .locals 1

    .line 1
    const-class v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->m:[Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 8
    .line 9
    return-object v0
.end method

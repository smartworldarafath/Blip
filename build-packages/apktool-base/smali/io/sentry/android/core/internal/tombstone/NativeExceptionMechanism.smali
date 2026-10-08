.class public final enum Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;
.super Ljava/lang/Enum;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

.field public static final enum SIGNAL_HANDLER:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

.field public static final enum TOMBSTONE:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

.field public static final enum TOMBSTONE_MERGED:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;
    .locals 3

    .line 1
    sget-object v0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->TOMBSTONE:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->SIGNAL_HANDLER:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    .line 4
    .line 5
    sget-object v2, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->TOMBSTONE_MERGED:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "Tombstone"

    .line 5
    .line 6
    const-string v3, "TOMBSTONE"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->TOMBSTONE:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    .line 12
    .line 13
    new-instance v0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "signalhandler"

    .line 17
    .line 18
    const-string v3, "SIGNAL_HANDLER"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->SIGNAL_HANDLER:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    .line 24
    .line 25
    new-instance v0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "TombstoneMerged"

    .line 29
    .line 30
    const-string v3, "TOMBSTONE_MERGED"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->TOMBSTONE_MERGED:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    .line 36
    .line 37
    invoke-static {}, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->$values()[Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->$VALUES:[Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    .line 42
    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;
    .locals 1

    .line 1
    const-class v0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->$VALUES:[Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

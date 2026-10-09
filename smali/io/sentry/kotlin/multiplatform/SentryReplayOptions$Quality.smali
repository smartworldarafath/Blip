.class public final enum Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;
.super Ljava/lang/Enum;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/kotlin/multiplatform/SentryReplayOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Quality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

.field public static final enum HIGH:Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

.field public static final enum LOW:Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

.field public static final enum MEDIUM:Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;


# instance fields
.field private final bitRate:I

.field private final sizeScale:F


# direct methods
.method private static final synthetic $values()[Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;
    .locals 3

    .line 1
    sget-object v0, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;->LOW:Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;->MEDIUM:Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

    .line 4
    .line 5
    sget-object v2, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;->HIGH:Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

    .line 2
    .line 3
    const v1, 0x3f4ccccd    # 0.8f

    .line 4
    .line 5
    .line 6
    const v2, 0xc350

    .line 7
    .line 8
    .line 9
    const-string v3, "LOW"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v0, v3, v4, v1, v2}, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;-><init>(Ljava/lang/String;IFI)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;->LOW:Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

    .line 16
    .line 17
    new-instance v0, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

    .line 18
    .line 19
    const v1, 0x124f8

    .line 20
    .line 21
    .line 22
    const-string v2, "MEDIUM"

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    const/high16 v4, 0x3f800000    # 1.0f

    .line 26
    .line 27
    invoke-direct {v0, v2, v3, v4, v1}, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;-><init>(Ljava/lang/String;IFI)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;->MEDIUM:Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

    .line 31
    .line 32
    new-instance v0, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    const v2, 0x186a0

    .line 36
    .line 37
    .line 38
    const-string v3, "HIGH"

    .line 39
    .line 40
    invoke-direct {v0, v3, v1, v4, v2}, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;-><init>(Ljava/lang/String;IFI)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;->HIGH:Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

    .line 44
    .line 45
    invoke-static {}, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;->$values()[Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;->$VALUES:[Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 56
    .line 57
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;->sizeScale:F

    .line 5
    .line 6
    iput p4, p0, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;->bitRate:I

    .line 7
    .line 8
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;
    .locals 1

    .line 1
    const-class v0, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;->$VALUES:[Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getBitRate()I
    .locals 0

    .line 1
    iget p0, p0, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;->bitRate:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSizeScale()F
    .locals 0

    .line 1
    iget p0, p0, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;->sizeScale:F

    .line 2
    .line 3
    return p0
.end method

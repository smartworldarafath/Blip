.class public final enum Lio/sentry/kotlin/multiplatform/SentryLevel;
.super Ljava/lang/Enum;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/kotlin/multiplatform/SentryLevel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/kotlin/multiplatform/SentryLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/sentry/kotlin/multiplatform/SentryLevel;

.field public static final Companion:Lio/sentry/kotlin/multiplatform/SentryLevel$Companion;

.field public static final enum DEBUG:Lio/sentry/kotlin/multiplatform/SentryLevel;

.field public static final enum ERROR:Lio/sentry/kotlin/multiplatform/SentryLevel;

.field public static final enum FATAL:Lio/sentry/kotlin/multiplatform/SentryLevel;

.field public static final enum INFO:Lio/sentry/kotlin/multiplatform/SentryLevel;

.field public static final enum WARNING:Lio/sentry/kotlin/multiplatform/SentryLevel;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lio/sentry/kotlin/multiplatform/SentryLevel;
    .locals 5

    .line 1
    sget-object v0, Lio/sentry/kotlin/multiplatform/SentryLevel;->DEBUG:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/kotlin/multiplatform/SentryLevel;->INFO:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 4
    .line 5
    sget-object v2, Lio/sentry/kotlin/multiplatform/SentryLevel;->WARNING:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 6
    .line 7
    sget-object v3, Lio/sentry/kotlin/multiplatform/SentryLevel;->ERROR:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 8
    .line 9
    sget-object v4, Lio/sentry/kotlin/multiplatform/SentryLevel;->FATAL:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 2
    .line 3
    const-string v1, "DEBUG"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lio/sentry/kotlin/multiplatform/SentryLevel;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lio/sentry/kotlin/multiplatform/SentryLevel;->DEBUG:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 11
    .line 12
    new-instance v0, Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 13
    .line 14
    const-string v1, "INFO"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lio/sentry/kotlin/multiplatform/SentryLevel;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lio/sentry/kotlin/multiplatform/SentryLevel;->INFO:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 21
    .line 22
    new-instance v0, Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 23
    .line 24
    const-string v1, "WARNING"

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lio/sentry/kotlin/multiplatform/SentryLevel;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lio/sentry/kotlin/multiplatform/SentryLevel;->WARNING:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 31
    .line 32
    new-instance v0, Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 33
    .line 34
    const-string v1, "ERROR"

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v3, v2}, Lio/sentry/kotlin/multiplatform/SentryLevel;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lio/sentry/kotlin/multiplatform/SentryLevel;->ERROR:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 41
    .line 42
    new-instance v0, Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 43
    .line 44
    const-string v1, "FATAL"

    .line 45
    .line 46
    const/4 v3, 0x5

    .line 47
    invoke-direct {v0, v1, v2, v3}, Lio/sentry/kotlin/multiplatform/SentryLevel;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lio/sentry/kotlin/multiplatform/SentryLevel;->FATAL:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 51
    .line 52
    invoke-static {}, Lio/sentry/kotlin/multiplatform/SentryLevel;->$values()[Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lio/sentry/kotlin/multiplatform/SentryLevel;->$VALUES:[Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lio/sentry/kotlin/multiplatform/SentryLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 63
    .line 64
    new-instance v0, Lio/sentry/kotlin/multiplatform/SentryLevel$Companion;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lio/sentry/kotlin/multiplatform/SentryLevel;->Companion:Lio/sentry/kotlin/multiplatform/SentryLevel$Companion;

    .line 70
    .line 71
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lio/sentry/kotlin/multiplatform/SentryLevel;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic access$getValue$p(Lio/sentry/kotlin/multiplatform/SentryLevel;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/sentry/kotlin/multiplatform/SentryLevel;->value:I

    .line 2
    .line 3
    return p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/sentry/kotlin/multiplatform/SentryLevel;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/sentry/kotlin/multiplatform/SentryLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/kotlin/multiplatform/SentryLevel;
    .locals 1

    .line 1
    const-class v0, Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/sentry/kotlin/multiplatform/SentryLevel;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/kotlin/multiplatform/SentryLevel;->$VALUES:[Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toInt$sentry_kotlin_multiplatform_release()I
    .locals 0

    .line 1
    iget p0, p0, Lio/sentry/kotlin/multiplatform/SentryLevel;->value:I

    .line 2
    .line 3
    return p0
.end method

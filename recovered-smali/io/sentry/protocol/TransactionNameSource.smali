.class public final enum Lio/sentry/protocol/TransactionNameSource;
.super Ljava/lang/Enum;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/protocol/TransactionNameSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/protocol/TransactionNameSource;

.field public static final enum COMPONENT:Lio/sentry/protocol/TransactionNameSource;

.field public static final enum CUSTOM:Lio/sentry/protocol/TransactionNameSource;

.field public static final enum ROUTE:Lio/sentry/protocol/TransactionNameSource;

.field public static final enum TASK:Lio/sentry/protocol/TransactionNameSource;

.field public static final enum URL:Lio/sentry/protocol/TransactionNameSource;

.field public static final enum VIEW:Lio/sentry/protocol/TransactionNameSource;


# direct methods
.method private static synthetic $values()[Lio/sentry/protocol/TransactionNameSource;
    .locals 6

    .line 1
    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/protocol/TransactionNameSource;->URL:Lio/sentry/protocol/TransactionNameSource;

    .line 4
    .line 5
    sget-object v2, Lio/sentry/protocol/TransactionNameSource;->ROUTE:Lio/sentry/protocol/TransactionNameSource;

    .line 6
    .line 7
    sget-object v3, Lio/sentry/protocol/TransactionNameSource;->VIEW:Lio/sentry/protocol/TransactionNameSource;

    .line 8
    .line 9
    sget-object v4, Lio/sentry/protocol/TransactionNameSource;->COMPONENT:Lio/sentry/protocol/TransactionNameSource;

    .line 10
    .line 11
    sget-object v5, Lio/sentry/protocol/TransactionNameSource;->TASK:Lio/sentry/protocol/TransactionNameSource;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Lio/sentry/protocol/TransactionNameSource;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/sentry/protocol/TransactionNameSource;

    .line 2
    .line 3
    const-string v1, "CUSTOM"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/TransactionNameSource;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    .line 10
    .line 11
    new-instance v0, Lio/sentry/protocol/TransactionNameSource;

    .line 12
    .line 13
    const-string v1, "URL"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/TransactionNameSource;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lio/sentry/protocol/TransactionNameSource;->URL:Lio/sentry/protocol/TransactionNameSource;

    .line 20
    .line 21
    new-instance v0, Lio/sentry/protocol/TransactionNameSource;

    .line 22
    .line 23
    const-string v1, "ROUTE"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/TransactionNameSource;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lio/sentry/protocol/TransactionNameSource;->ROUTE:Lio/sentry/protocol/TransactionNameSource;

    .line 30
    .line 31
    new-instance v0, Lio/sentry/protocol/TransactionNameSource;

    .line 32
    .line 33
    const-string v1, "VIEW"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/TransactionNameSource;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lio/sentry/protocol/TransactionNameSource;->VIEW:Lio/sentry/protocol/TransactionNameSource;

    .line 40
    .line 41
    new-instance v0, Lio/sentry/protocol/TransactionNameSource;

    .line 42
    .line 43
    const-string v1, "COMPONENT"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/TransactionNameSource;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lio/sentry/protocol/TransactionNameSource;->COMPONENT:Lio/sentry/protocol/TransactionNameSource;

    .line 50
    .line 51
    new-instance v0, Lio/sentry/protocol/TransactionNameSource;

    .line 52
    .line 53
    const-string v1, "TASK"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/TransactionNameSource;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lio/sentry/protocol/TransactionNameSource;->TASK:Lio/sentry/protocol/TransactionNameSource;

    .line 60
    .line 61
    invoke-static {}, Lio/sentry/protocol/TransactionNameSource;->$values()[Lio/sentry/protocol/TransactionNameSource;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lio/sentry/protocol/TransactionNameSource;->$VALUES:[Lio/sentry/protocol/TransactionNameSource;

    .line 66
    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/protocol/TransactionNameSource;
    .locals 1

    .line 1
    const-class v0, Lio/sentry/protocol/TransactionNameSource;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/sentry/protocol/TransactionNameSource;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/sentry/protocol/TransactionNameSource;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->$VALUES:[Lio/sentry/protocol/TransactionNameSource;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/sentry/protocol/TransactionNameSource;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/sentry/protocol/TransactionNameSource;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public apiName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

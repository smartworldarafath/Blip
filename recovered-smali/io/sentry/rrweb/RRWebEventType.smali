.class public final enum Lio/sentry/rrweb/RRWebEventType;
.super Ljava/lang/Enum;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/rrweb/RRWebEventType$Deserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/rrweb/RRWebEventType;",
        ">;",
        "Lio/sentry/JsonSerializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/rrweb/RRWebEventType;

.field public static final enum Custom:Lio/sentry/rrweb/RRWebEventType;

.field public static final enum DomContentLoaded:Lio/sentry/rrweb/RRWebEventType;

.field public static final enum FullSnapshot:Lio/sentry/rrweb/RRWebEventType;

.field public static final enum IncrementalSnapshot:Lio/sentry/rrweb/RRWebEventType;

.field public static final enum Load:Lio/sentry/rrweb/RRWebEventType;

.field public static final enum Meta:Lio/sentry/rrweb/RRWebEventType;

.field public static final enum Plugin:Lio/sentry/rrweb/RRWebEventType;


# direct methods
.method private static synthetic $values()[Lio/sentry/rrweb/RRWebEventType;
    .locals 7

    .line 1
    sget-object v0, Lio/sentry/rrweb/RRWebEventType;->DomContentLoaded:Lio/sentry/rrweb/RRWebEventType;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/rrweb/RRWebEventType;->Load:Lio/sentry/rrweb/RRWebEventType;

    .line 4
    .line 5
    sget-object v2, Lio/sentry/rrweb/RRWebEventType;->FullSnapshot:Lio/sentry/rrweb/RRWebEventType;

    .line 6
    .line 7
    sget-object v3, Lio/sentry/rrweb/RRWebEventType;->IncrementalSnapshot:Lio/sentry/rrweb/RRWebEventType;

    .line 8
    .line 9
    sget-object v4, Lio/sentry/rrweb/RRWebEventType;->Meta:Lio/sentry/rrweb/RRWebEventType;

    .line 10
    .line 11
    sget-object v5, Lio/sentry/rrweb/RRWebEventType;->Custom:Lio/sentry/rrweb/RRWebEventType;

    .line 12
    .line 13
    sget-object v6, Lio/sentry/rrweb/RRWebEventType;->Plugin:Lio/sentry/rrweb/RRWebEventType;

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Lio/sentry/rrweb/RRWebEventType;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/sentry/rrweb/RRWebEventType;

    .line 2
    .line 3
    const-string v1, "DomContentLoaded"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebEventType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lio/sentry/rrweb/RRWebEventType;->DomContentLoaded:Lio/sentry/rrweb/RRWebEventType;

    .line 10
    .line 11
    new-instance v0, Lio/sentry/rrweb/RRWebEventType;

    .line 12
    .line 13
    const-string v1, "Load"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebEventType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lio/sentry/rrweb/RRWebEventType;->Load:Lio/sentry/rrweb/RRWebEventType;

    .line 20
    .line 21
    new-instance v0, Lio/sentry/rrweb/RRWebEventType;

    .line 22
    .line 23
    const-string v1, "FullSnapshot"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebEventType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lio/sentry/rrweb/RRWebEventType;->FullSnapshot:Lio/sentry/rrweb/RRWebEventType;

    .line 30
    .line 31
    new-instance v0, Lio/sentry/rrweb/RRWebEventType;

    .line 32
    .line 33
    const-string v1, "IncrementalSnapshot"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebEventType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lio/sentry/rrweb/RRWebEventType;->IncrementalSnapshot:Lio/sentry/rrweb/RRWebEventType;

    .line 40
    .line 41
    new-instance v0, Lio/sentry/rrweb/RRWebEventType;

    .line 42
    .line 43
    const-string v1, "Meta"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebEventType;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lio/sentry/rrweb/RRWebEventType;->Meta:Lio/sentry/rrweb/RRWebEventType;

    .line 50
    .line 51
    new-instance v0, Lio/sentry/rrweb/RRWebEventType;

    .line 52
    .line 53
    const-string v1, "Custom"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebEventType;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lio/sentry/rrweb/RRWebEventType;->Custom:Lio/sentry/rrweb/RRWebEventType;

    .line 60
    .line 61
    new-instance v0, Lio/sentry/rrweb/RRWebEventType;

    .line 62
    .line 63
    const-string v1, "Plugin"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebEventType;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lio/sentry/rrweb/RRWebEventType;->Plugin:Lio/sentry/rrweb/RRWebEventType;

    .line 70
    .line 71
    invoke-static {}, Lio/sentry/rrweb/RRWebEventType;->$values()[Lio/sentry/rrweb/RRWebEventType;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lio/sentry/rrweb/RRWebEventType;->$VALUES:[Lio/sentry/rrweb/RRWebEventType;

    .line 76
    .line 77
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

.method public static valueOf(Ljava/lang/String;)Lio/sentry/rrweb/RRWebEventType;
    .locals 1

    .line 1
    const-class v0, Lio/sentry/rrweb/RRWebEventType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/sentry/rrweb/RRWebEventType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/sentry/rrweb/RRWebEventType;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/rrweb/RRWebEventType;->$VALUES:[Lio/sentry/rrweb/RRWebEventType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/sentry/rrweb/RRWebEventType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/sentry/rrweb/RRWebEventType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    int-to-long v0, p0

    .line 6
    check-cast p1, Lio/sentry/JsonObjectWriter;

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Lio/sentry/JsonObjectWriter;->f(J)Lio/sentry/JsonObjectWriter;

    .line 9
    .line 10
    .line 11
    return-void
.end method

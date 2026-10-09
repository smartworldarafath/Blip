.class public final Lio/sentry/kotlin/multiplatform/protocol/SentryId;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final c:Lio/sentry/kotlin/multiplatform/protocol/SentryId;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lio/sentry/protocol/SentryId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/kotlin/multiplatform/protocol/SentryId;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lio/sentry/kotlin/multiplatform/protocol/SentryId;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lio/sentry/kotlin/multiplatform/protocol/SentryId;->c:Lio/sentry/kotlin/multiplatform/protocol/SentryId;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/kotlin/multiplatform/protocol/SentryId;->a:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lio/sentry/protocol/SentryId;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lio/sentry/protocol/SentryId;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    move-object p1, v0

    .line 21
    :goto_0
    iput-object p1, p0, Lio/sentry/kotlin/multiplatform/protocol/SentryId;->b:Lio/sentry/protocol/SentryId;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lio/sentry/kotlin/multiplatform/protocol/SentryId;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lio/sentry/kotlin/multiplatform/protocol/SentryId;

    .line 10
    .line 11
    iget-object p0, p0, Lio/sentry/kotlin/multiplatform/protocol/SentryId;->a:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p1, p1, Lio/sentry/kotlin/multiplatform/protocol/SentryId;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_2

    .line 20
    .line 21
    :goto_0
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 24
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/kotlin/multiplatform/protocol/SentryId;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/kotlin/multiplatform/protocol/SentryId;->b:Lio/sentry/protocol/SentryId;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

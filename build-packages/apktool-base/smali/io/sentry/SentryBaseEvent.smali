.class public abstract Lio/sentry/SentryBaseEvent;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryBaseEvent$Deserializer;,
        Lio/sentry/SentryBaseEvent$Serializer;
    }
.end annotation


# instance fields
.field public j:Lio/sentry/protocol/SentryId;

.field public final k:Lio/sentry/protocol/Contexts;

.field public l:Lio/sentry/protocol/SdkVersion;

.field public m:Lio/sentry/protocol/Request;

.field public n:Ljava/util/AbstractMap;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Lio/sentry/protocol/User;

.field public transient s:Lio/sentry/exception/ExceptionMechanismException;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/util/List;

.field public w:Lio/sentry/protocol/DebugMeta;

.field public x:Ljava/util/AbstractMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    new-instance v0, Lio/sentry/protocol/SentryId;

    invoke-direct {v0}, Lio/sentry/protocol/SentryId;-><init>()V

    invoke-direct {p0, v0}, Lio/sentry/SentryBaseEvent;-><init>(Lio/sentry/protocol/SentryId;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/protocol/Contexts;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/SentryBaseEvent;->k:Lio/sentry/protocol/Contexts;

    .line 10
    .line 11
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Throwable;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->s:Lio/sentry/exception/ExceptionMechanismException;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lio/sentry/exception/ExceptionMechanismException;->k:Ljava/lang/Throwable;

    .line 6
    .line 7
    :cond_0
    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 11
    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 16
    .line 17
    if-nez p2, :cond_3

    .line 18
    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_2
    :goto_0
    return-void

    .line 25
    :cond_3
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final c(Ljava/util/Map;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iput-object v0, p0, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 11
    .line 12
    return-void
.end method

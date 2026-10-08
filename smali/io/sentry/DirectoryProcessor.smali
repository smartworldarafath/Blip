.class abstract Lio/sentry/DirectoryProcessor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;
    }
.end annotation


# instance fields
.field public final a:Lio/sentry/IScopes;

.field public final b:Lio/sentry/ILogger;

.field public final c:J

.field public final d:Ljava/util/Queue;


# direct methods
.method public constructor <init>(Lio/sentry/IScopes;Lio/sentry/ILogger;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/DirectoryProcessor;->a:Lio/sentry/IScopes;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/DirectoryProcessor;->b:Lio/sentry/ILogger;

    .line 7
    .line 8
    iput-wide p3, p0, Lio/sentry/DirectoryProcessor;->c:J

    .line 9
    .line 10
    new-instance p1, Lio/sentry/CircularFifoQueue;

    .line 11
    .line 12
    invoke-direct {p1, p5}, Lio/sentry/CircularFifoQueue;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Lio/sentry/SynchronizedQueue;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Lio/sentry/SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lio/sentry/DirectoryProcessor;->d:Ljava/util/Queue;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Z
.end method

.method public abstract b(Ljava/io/File;Lio/sentry/Hint;)V
.end method

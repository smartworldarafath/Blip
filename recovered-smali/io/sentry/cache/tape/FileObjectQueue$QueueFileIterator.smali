.class final Lio/sentry/cache/tape/FileObjectQueue$QueueFileIterator;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/cache/tape/FileObjectQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "QueueFileIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final j:Ljava/util/Iterator;

.field public final synthetic k:Lio/sentry/cache/tape/FileObjectQueue;


# direct methods
.method public constructor <init>(Lio/sentry/cache/tape/FileObjectQueue;Ljava/util/Iterator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/cache/tape/FileObjectQueue$QueueFileIterator;->k:Lio/sentry/cache/tape/FileObjectQueue;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/cache/tape/FileObjectQueue$QueueFileIterator;->j:Ljava/util/Iterator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/cache/tape/FileObjectQueue$QueueFileIterator;->j:Ljava/util/Iterator;

    .line 2
    .line 3
    check-cast p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/sentry/cache/tape/QueueFile$ElementIterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/cache/tape/FileObjectQueue$QueueFileIterator;->j:Ljava/util/Iterator;

    .line 2
    .line 3
    check-cast v0, Lio/sentry/cache/tape/QueueFile$ElementIterator;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/cache/tape/QueueFile$ElementIterator;->next()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, [B

    .line 10
    .line 11
    iget-object p0, p0, Lio/sentry/cache/tape/FileObjectQueue$QueueFileIterator;->k:Lio/sentry/cache/tape/FileObjectQueue;

    .line 12
    .line 13
    iget-object p0, p0, Lio/sentry/cache/tape/FileObjectQueue;->l:Lio/sentry/cache/tape/ObjectQueue$Converter;

    .line 14
    .line 15
    invoke-interface {p0, v0}, Lio/sentry/cache/tape/ObjectQueue$Converter;->b([B)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final remove()V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/cache/tape/FileObjectQueue$QueueFileIterator;->j:Ljava/util/Iterator;

    .line 2
    .line 3
    check-cast p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/sentry/cache/tape/QueueFile$ElementIterator;->remove()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

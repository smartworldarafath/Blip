.class Lio/sentry/SentryEnvelopeItem$CachedItem;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryEnvelopeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedItem"
.end annotation


# instance fields
.field public a:[B

.field public final b:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/SentryEnvelopeItem$CachedItem;->b:Ljava/util/concurrent/Callable;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem$CachedItem;->a:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem$CachedItem;->b:Ljava/util/concurrent/Callable;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, [B

    .line 12
    .line 13
    iput-object v0, p0, Lio/sentry/SentryEnvelopeItem$CachedItem;->a:[B

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lio/sentry/SentryEnvelopeItem$CachedItem;->a:[B

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    new-array p0, p0, [B

    .line 22
    .line 23
    return-object p0
.end method

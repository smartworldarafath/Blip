.class final Lio/sentry/android/replay/ReplayCache$rotate$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/sentry/android/replay/ReplayFrame;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:J

.field public final synthetic l:Lio/sentry/android/replay/ReplayCache;

.field public final synthetic m:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(JLio/sentry/android/replay/ReplayCache;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/sentry/android/replay/ReplayCache$rotate$1$1;->k:J

    .line 2
    .line 3
    iput-object p3, p0, Lio/sentry/android/replay/ReplayCache$rotate$1$1;->l:Lio/sentry/android/replay/ReplayCache;

    .line 4
    .line 5
    iput-object p4, p0, Lio/sentry/android/replay/ReplayCache$rotate$1$1;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lio/sentry/android/replay/ReplayFrame;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-wide v0, p1, Lio/sentry/android/replay/ReplayFrame;->b:J

    .line 7
    .line 8
    iget-wide v2, p0, Lio/sentry/android/replay/ReplayCache$rotate$1$1;->k:J

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lio/sentry/android/replay/ReplayCache$rotate$1$1;->l:Lio/sentry/android/replay/ReplayCache;

    .line 15
    .line 16
    iget-object p1, p1, Lio/sentry/android/replay/ReplayFrame;->a:Ljava/io/File;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lio/sentry/android/replay/ReplayCache;->h(Ljava/io/File;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    iget-object p0, p0, Lio/sentry/android/replay/ReplayCache$rotate$1$1;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 25
    .line 26
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object p1, p1, Lio/sentry/android/replay/ReplayFrame;->c:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 33
    .line 34
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 35
    .line 36
    return-object p0
.end method

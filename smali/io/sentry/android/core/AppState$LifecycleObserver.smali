.class public final Lio/sentry/android/core/AppState$LifecycleObserver;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LifecycleObserver"
.end annotation


# instance fields
.field public final j:Ljava/util/List;

.field public final synthetic k:Lio/sentry/android/core/AppState;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/AppState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/core/AppState$LifecycleObserver;->k:Lio/sentry/android/core/AppState;

    .line 5
    .line 6
    new-instance p1, Lio/sentry/android/core/AppState$LifecycleObserver$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lio/sentry/android/core/AppState$LifecycleObserver$1;-><init>(Lio/sentry/android/core/AppState$LifecycleObserver;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lio/sentry/android/core/AppState$LifecycleObserver;->j:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/sentry/android/core/AppState$LifecycleObserver;->k:Lio/sentry/android/core/AppState;

    .line 2
    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    iput-object v0, p1, Lio/sentry/android/core/AppState;->m:Ljava/lang/Boolean;

    .line 6
    .line 7
    iget-object p0, p0, Lio/sentry/android/core/AppState$LifecycleObserver;->j:Ljava/util/List;

    .line 8
    .line 9
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lio/sentry/android/core/AppState$AppStateListener;

    .line 26
    .line 27
    invoke-interface {p1}, Lio/sentry/android/core/AppState$AppStateListener;->a()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public final onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/sentry/android/core/AppState$LifecycleObserver;->k:Lio/sentry/android/core/AppState;

    .line 2
    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    iput-object v0, p1, Lio/sentry/android/core/AppState;->m:Ljava/lang/Boolean;

    .line 6
    .line 7
    iget-object p0, p0, Lio/sentry/android/core/AppState$LifecycleObserver;->j:Ljava/util/List;

    .line 8
    .line 9
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lio/sentry/android/core/AppState$AppStateListener;

    .line 26
    .line 27
    invoke-interface {p1}, Lio/sentry/android/core/AppState$AppStateListener;->h()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

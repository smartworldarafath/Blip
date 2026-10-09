.class public final Lio/sentry/android/replay/WindowManagerSpy;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lkotlin/Lazy;

.field public static final b:Lkotlin/Lazy;

.field public static final c:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->k:Lkotlin/LazyThreadSafetyMode;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/android/replay/WindowManagerSpy$windowManagerClass$2;->k:Lio/sentry/android/replay/WindowManagerSpy$windowManagerClass$2;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sput-object v1, Lio/sentry/android/replay/WindowManagerSpy;->a:Lkotlin/Lazy;

    .line 10
    .line 11
    sget-object v1, Lio/sentry/android/replay/WindowManagerSpy$windowManagerInstance$2;->k:Lio/sentry/android/replay/WindowManagerSpy$windowManagerInstance$2;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lio/sentry/android/replay/WindowManagerSpy;->b:Lkotlin/Lazy;

    .line 18
    .line 19
    sget-object v1, Lio/sentry/android/replay/WindowManagerSpy$mViewsField$2;->k:Lio/sentry/android/replay/WindowManagerSpy$mViewsField$2;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lio/sentry/android/replay/WindowManagerSpy;->c:Lkotlin/Lazy;

    .line 26
    .line 27
    return-void
.end method

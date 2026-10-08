.class final Lio/sentry/android/replay/WindowManagerSpy$mViewsField$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/WindowManagerSpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Lio/sentry/android/replay/WindowManagerSpy$mViewsField$2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/android/replay/WindowManagerSpy$mViewsField$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/sentry/android/replay/WindowManagerSpy$mViewsField$2;->k:Lio/sentry/android/replay/WindowManagerSpy$mViewsField$2;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p0, Lio/sentry/android/replay/WindowManagerSpy;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    sget-object p0, Lio/sentry/android/replay/WindowManagerSpy;->a:Lkotlin/Lazy;

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Class;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const-string v0, "mViews"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

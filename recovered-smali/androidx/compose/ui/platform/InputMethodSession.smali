.class final Landroidx/compose/ui/platform/InputMethodSession;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;

.field public final b:Lr1;

.field public final c:Ljava/lang/Object;

.field public final d:Landroidx/compose/runtime/collection/MutableVector;

.field public e:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;Lr1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/platform/InputMethodSession;->a:Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/platform/InputMethodSession;->b:Lr1;

    .line 7
    .line 8
    new-instance p1, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/compose/ui/platform/InputMethodSession;->c:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    .line 16
    .line 17
    const/16 p2, 0x10

    .line 18
    .line 19
    new-array p2, p2, [Landroidx/compose/ui/node/WeakReference;

    .line 20
    .line 21
    invoke-direct {p1, p2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/compose/ui/platform/InputMethodSession;->d:Landroidx/compose/runtime/collection/MutableVector;

    .line 25
    .line 26
    return-void
.end method

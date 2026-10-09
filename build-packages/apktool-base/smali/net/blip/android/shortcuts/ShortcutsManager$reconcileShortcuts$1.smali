.class final Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.shortcuts.ShortcutsManager"
    f = "ShortcutsManager.kt"
    l = {
        0x42,
        0x61
    }
    m = "reconcileShortcuts"
    v = 0x2
.end annotation


# instance fields
.field public m:Lnet/blip/libblip/frontend/State;

.field public n:Ljava/lang/String;

.field public o:Ljava/util/List;

.field public p:Ljava/util/List;

.field public q:Ljava/util/Set;

.field public r:Ljava/lang/Object;

.field public s:Ljava/util/Map;

.field public t:Ljava/util/Iterator;

.field public u:I

.field public synthetic v:Ljava/lang/Object;

.field public final synthetic w:Lnet/blip/android/shortcuts/ShortcutsManager;

.field public x:I


# direct methods
.method public constructor <init>(Lnet/blip/android/shortcuts/ShortcutsManager;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->w:Lnet/blip/android/shortcuts/ShortcutsManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->v:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->x:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->x:I

    .line 9
    .line 10
    iget-object p1, p0, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->w:Lnet/blip/android/shortcuts/ShortcutsManager;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0, p0}, Lnet/blip/android/shortcuts/ShortcutsManager;->a(Lnet/blip/android/shortcuts/ShortcutsManager;Lnet/blip/libblip/frontend/State;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

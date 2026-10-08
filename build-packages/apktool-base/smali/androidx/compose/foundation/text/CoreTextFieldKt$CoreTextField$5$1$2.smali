.class final Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public final synthetic k:Landroidx/compose/ui/text/input/TextInputService;

.field public final synthetic l:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final synthetic m:Landroidx/compose/ui/text/input/ImeOptions;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/ImeOptions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$2;->j:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$2;->k:Landroidx/compose/ui/text/input/TextInputService;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$2;->l:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$2;->m:Landroidx/compose/ui/text/input/ImeOptions;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$2;->j:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/compose/foundation/text/LegacyTextFieldState;->b()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$2;->l:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object p1, p1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 24
    .line 25
    iget-object v1, p2, Landroidx/compose/foundation/text/LegacyTextFieldState;->d:Landroidx/compose/ui/text/input/EditProcessor;

    .line 26
    .line 27
    iget-object v2, p2, Landroidx/compose/foundation/text/LegacyTextFieldState;->v:Lt6;

    .line 28
    .line 29
    iget-object v3, p2, Landroidx/compose/foundation/text/LegacyTextFieldState;->w:Lt6;

    .line 30
    .line 31
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 32
    .line 33
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v5, Lp2;

    .line 37
    .line 38
    const/16 v6, 0x11

    .line 39
    .line 40
    invoke-direct {v5, v1, v2, v4, v6}, Lp2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$2;->k:Landroidx/compose/ui/text/input/TextInputService;

    .line 44
    .line 45
    iget-object v2, v1, Landroidx/compose/ui/text/input/TextInputService;->a:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 46
    .line 47
    iget-object p0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$2;->m:Landroidx/compose/ui/text/input/ImeOptions;

    .line 48
    .line 49
    invoke-interface {v2, v0, p0, v5, v3}, Landroidx/compose/ui/text/input/PlatformTextInputService;->c(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Lp2;Lkotlin/jvm/functions/Function1;)V

    .line 50
    .line 51
    .line 52
    new-instance p0, Landroidx/compose/ui/text/input/TextInputSession;

    .line 53
    .line 54
    invoke-direct {p0, v1, v2}, Landroidx/compose/ui/text/input/TextInputSession;-><init>(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/PlatformTextInputService;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v1, Landroidx/compose/ui/text/input/TextInputService;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 58
    .line 59
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iput-object p0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 63
    .line 64
    iput-object p0, p2, Landroidx/compose/foundation/text/LegacyTextFieldState;->e:Landroidx/compose/ui/text/input/TextInputSession;

    .line 65
    .line 66
    invoke-static {p2, v0, p1}, Landroidx/compose/foundation/text/CoreTextFieldKt;->f(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-static {p2}, Landroidx/compose/foundation/text/CoreTextFieldKt;->e(Landroidx/compose/foundation/text/LegacyTextFieldState;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 74
    .line 75
    return-object p0
.end method

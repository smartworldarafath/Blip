.class public final synthetic Lba;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/ProduceStateScope;

.field public final synthetic k:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/ProduceStateScope;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lba;->j:Landroidx/compose/runtime/ProduceStateScope;

    .line 5
    .line 6
    iput-object p2, p0, Lba;->k:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lba;->k:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {v0}, Lnet/blip/android/ui/util/KeyboardKt;->b(Landroid/view/View;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object p0, p0, Lba;->j:Landroidx/compose/runtime/ProduceStateScope;

    .line 12
    .line 13
    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

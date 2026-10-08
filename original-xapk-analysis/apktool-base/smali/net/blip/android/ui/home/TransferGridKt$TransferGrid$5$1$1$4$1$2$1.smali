.class final Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lnet/blip/libblip/frontend/Transfer;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/frontend/Transfer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$2$1;->j:Lnet/blip/libblip/frontend/Transfer;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$2$1;->k:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-object p1, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$2$1;->l:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$2$1;->j:Lnet/blip/libblip/frontend/Transfer;

    .line 2
    .line 3
    invoke-static {v0}, Lnet/blip/libblip/Transfer_DerivedKt;->c(Lnet/blip/libblip/frontend/Transfer;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$2$1;->k:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$2$1;->l:Landroidx/compose/runtime/MutableState;

    .line 16
    .line 17
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

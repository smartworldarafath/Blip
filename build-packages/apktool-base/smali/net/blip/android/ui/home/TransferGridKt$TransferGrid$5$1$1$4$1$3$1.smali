.class final Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$3$1;
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
.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lnet/blip/libblip/frontend/Transfer;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/frontend/Transfer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$3$1;->j:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$3$1;->k:Lnet/blip/libblip/frontend/Transfer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$3$1;->j:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iget-object p0, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$3$1;->k:Lnet/blip/libblip/frontend/Transfer;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

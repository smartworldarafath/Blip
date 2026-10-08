.class public final Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList_uFdPcIQ$lambda$6$3$0$$inlined$items$default$2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lh;

.field public final synthetic k:Ljava/util/List;


# direct methods
.method public constructor <init>(Lh;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList_uFdPcIQ$lambda$6$3$0$$inlined$items$default$2;->j:Lh;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList_uFdPcIQ$lambda$6$3$0$$inlined$items$default$2;->k:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList_uFdPcIQ$lambda$6$3$0$$inlined$items$default$2;->k:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p0, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList_uFdPcIQ$lambda$6$3$0$$inlined$items$default$2;->j:Lh;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

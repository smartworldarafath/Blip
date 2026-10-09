.class final Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$3$4$1$2$2$1;
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

.field public final synthetic k:Lnet/blip/android/ui/audiopicker/AudioFile;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lnet/blip/android/ui/audiopicker/AudioFile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$3$4$1$2$2$1;->j:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$3$4$1$2$2$1;->k:Lnet/blip/android/ui/audiopicker/AudioFile;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$3$4$1$2$2$1;->k:Lnet/blip/android/ui/audiopicker/AudioFile;

    .line 2
    .line 3
    iget-object v0, v0, Lnet/blip/android/ui/audiopicker/AudioFile;->d:Landroid/net/Uri;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$3$4$1$2$2$1;->j:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

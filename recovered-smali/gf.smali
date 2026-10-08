.class public final synthetic Lgf;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/platform/UriHandler;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/platform/UriHandler;I)V
    .locals 0

    .line 1
    iput p2, p0, Lgf;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lgf;->k:Landroidx/compose/ui/platform/UriHandler;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lgf;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lgf;->k:Landroidx/compose/ui/platform/UriHandler;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object v0, Lnet/blip/shared/Strings;->d:Ljava/lang/String;

    .line 11
    .line 12
    check-cast p0, Landroidx/compose/ui/platform/AndroidUriHandler;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/AndroidUriHandler;->a(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :pswitch_0
    sget-object v0, Lnet/blip/shared/Strings;->b:Ljava/lang/String;

    .line 19
    .line 20
    check-cast p0, Landroidx/compose/ui/platform/AndroidUriHandler;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/AndroidUriHandler;->a(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

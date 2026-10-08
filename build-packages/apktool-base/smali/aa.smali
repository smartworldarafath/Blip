.class public final synthetic Laa;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/firebase/encoders/ValueEncoder;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Laa;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Laa;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Boolean;

    .line 7
    .line 8
    check-cast p2, Lcom/google/firebase/encoders/ValueEncoderContext;

    .line 9
    .line 10
    sget-object p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->e:Lz9;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-interface {p2, p0}, Lcom/google/firebase/encoders/ValueEncoderContext;->d(Z)Lcom/google/firebase/encoders/ValueEncoderContext;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    check-cast p2, Lcom/google/firebase/encoders/ValueEncoderContext;

    .line 23
    .line 24
    sget-object p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->e:Lz9;

    .line 25
    .line 26
    invoke-interface {p2, p1}, Lcom/google/firebase/encoders/ValueEncoderContext;->c(Ljava/lang/String;)Lcom/google/firebase/encoders/ValueEncoderContext;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

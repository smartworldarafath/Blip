.class public final synthetic Lbh;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Landroidx/compose/ui/Modifier;

.field public final synthetic m:Z

.field public final synthetic n:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic o:Landroidx/compose/ui/text/input/VisualTransformation;

.field public final synthetic p:Landroidx/compose/foundation/text/KeyboardOptions;

.field public final synthetic q:Landroidx/compose/foundation/text/KeyboardActions;

.field public final synthetic r:Z

.field public final synthetic s:I

.field public final synthetic t:I

.field public final synthetic u:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic v:Landroidx/compose/material/TextFieldColors;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbh;->j:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 5
    .line 6
    iput-object p2, p0, Lbh;->k:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-object p3, p0, Lbh;->l:Landroidx/compose/ui/Modifier;

    .line 9
    .line 10
    iput-boolean p4, p0, Lbh;->m:Z

    .line 11
    .line 12
    iput-object p5, p0, Lbh;->n:Landroidx/compose/ui/text/TextStyle;

    .line 13
    .line 14
    iput-object p6, p0, Lbh;->o:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 15
    .line 16
    iput-object p7, p0, Lbh;->p:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 17
    .line 18
    iput-object p8, p0, Lbh;->q:Landroidx/compose/foundation/text/KeyboardActions;

    .line 19
    .line 20
    iput-boolean p9, p0, Lbh;->r:Z

    .line 21
    .line 22
    iput p10, p0, Lbh;->s:I

    .line 23
    .line 24
    iput p11, p0, Lbh;->t:I

    .line 25
    .line 26
    iput-object p12, p0, Lbh;->u:Landroidx/compose/ui/graphics/Shape;

    .line 27
    .line 28
    iput-object p13, p0, Lbh;->v:Landroidx/compose/material/TextFieldColors;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    check-cast v13, Landroidx/compose/runtime/Composer;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x31

    .line 15
    .line 16
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 17
    .line 18
    .line 19
    move-result v14

    .line 20
    iget-object v1, v0, Lbh;->j:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 21
    .line 22
    move-object v2, v1

    .line 23
    iget-object v1, v0, Lbh;->k:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    move-object v3, v2

    .line 26
    iget-object v2, v0, Lbh;->l:Landroidx/compose/ui/Modifier;

    .line 27
    .line 28
    move-object v4, v3

    .line 29
    iget-boolean v3, v0, Lbh;->m:Z

    .line 30
    .line 31
    move-object v5, v4

    .line 32
    iget-object v4, v0, Lbh;->n:Landroidx/compose/ui/text/TextStyle;

    .line 33
    .line 34
    move-object v6, v5

    .line 35
    iget-object v5, v0, Lbh;->o:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 36
    .line 37
    move-object v7, v6

    .line 38
    iget-object v6, v0, Lbh;->p:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 39
    .line 40
    move-object v8, v7

    .line 41
    iget-object v7, v0, Lbh;->q:Landroidx/compose/foundation/text/KeyboardActions;

    .line 42
    .line 43
    move-object v9, v8

    .line 44
    iget-boolean v8, v0, Lbh;->r:Z

    .line 45
    .line 46
    move-object v10, v9

    .line 47
    iget v9, v0, Lbh;->s:I

    .line 48
    .line 49
    move-object v11, v10

    .line 50
    iget v10, v0, Lbh;->t:I

    .line 51
    .line 52
    move-object v12, v11

    .line 53
    iget-object v11, v0, Lbh;->u:Landroidx/compose/ui/graphics/Shape;

    .line 54
    .line 55
    iget-object v0, v0, Lbh;->v:Landroidx/compose/material/TextFieldColors;

    .line 56
    .line 57
    move-object v15, v12

    .line 58
    move-object v12, v0

    .line 59
    move-object v0, v15

    .line 60
    invoke-static/range {v0 .. v14}, Landroidx/compose/material/TextFieldKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/runtime/Composer;I)V

    .line 61
    .line 62
    .line 63
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    return-object v0
.end method

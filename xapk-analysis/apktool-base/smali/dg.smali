.class public final synthetic Ldg;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/Modifier;

.field public final synthetic k:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic o:Landroidx/compose/ui/focus/FocusRequester;

.field public final synthetic p:Landroidx/compose/ui/text/input/VisualTransformation;

.field public final synthetic q:Landroidx/compose/foundation/text/KeyboardOptions;

.field public final synthetic r:Landroidx/compose/foundation/text/KeyboardActions;

.field public final synthetic s:Z

.field public final synthetic t:I

.field public final synthetic u:I

.field public final synthetic v:I

.field public final synthetic w:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldg;->j:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Ldg;->k:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 7
    .line 8
    iput-object p3, p0, Ldg;->l:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput-object p4, p0, Ldg;->m:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Ldg;->n:Landroidx/compose/ui/text/TextStyle;

    .line 13
    .line 14
    iput-object p6, p0, Ldg;->o:Landroidx/compose/ui/focus/FocusRequester;

    .line 15
    .line 16
    iput-object p7, p0, Ldg;->p:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 17
    .line 18
    iput-object p8, p0, Ldg;->q:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 19
    .line 20
    iput-object p9, p0, Ldg;->r:Landroidx/compose/foundation/text/KeyboardActions;

    .line 21
    .line 22
    iput-boolean p10, p0, Ldg;->s:Z

    .line 23
    .line 24
    iput p11, p0, Ldg;->t:I

    .line 25
    .line 26
    iput p12, p0, Ldg;->u:I

    .line 27
    .line 28
    iput p13, p0, Ldg;->v:I

    .line 29
    .line 30
    iput p14, p0, Ldg;->w:I

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    check-cast v12, Landroidx/compose/runtime/Composer;

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
    iget v1, v0, Ldg;->v:I

    .line 15
    .line 16
    or-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 19
    .line 20
    .line 21
    move-result v13

    .line 22
    iget-object v1, v0, Ldg;->j:Landroidx/compose/ui/Modifier;

    .line 23
    .line 24
    move-object v2, v1

    .line 25
    iget-object v1, v0, Ldg;->k:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 26
    .line 27
    move-object v3, v2

    .line 28
    iget-object v2, v0, Ldg;->l:Lkotlin/jvm/functions/Function1;

    .line 29
    .line 30
    move-object v4, v3

    .line 31
    iget-object v3, v0, Ldg;->m:Ljava/lang/String;

    .line 32
    .line 33
    move-object v5, v4

    .line 34
    iget-object v4, v0, Ldg;->n:Landroidx/compose/ui/text/TextStyle;

    .line 35
    .line 36
    move-object v6, v5

    .line 37
    iget-object v5, v0, Ldg;->o:Landroidx/compose/ui/focus/FocusRequester;

    .line 38
    .line 39
    move-object v7, v6

    .line 40
    iget-object v6, v0, Ldg;->p:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 41
    .line 42
    move-object v8, v7

    .line 43
    iget-object v7, v0, Ldg;->q:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 44
    .line 45
    move-object v9, v8

    .line 46
    iget-object v8, v0, Ldg;->r:Landroidx/compose/foundation/text/KeyboardActions;

    .line 47
    .line 48
    move-object v10, v9

    .line 49
    iget-boolean v9, v0, Ldg;->s:Z

    .line 50
    .line 51
    move-object v11, v10

    .line 52
    iget v10, v0, Ldg;->t:I

    .line 53
    .line 54
    move-object v14, v11

    .line 55
    iget v11, v0, Ldg;->u:I

    .line 56
    .line 57
    iget v0, v0, Ldg;->w:I

    .line 58
    .line 59
    move-object v15, v14

    .line 60
    move v14, v0

    .line 61
    move-object v0, v15

    .line 62
    invoke-static/range {v0 .. v14}, Lnet/blip/android/ui/components/StyledTextFieldKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/runtime/Composer;II)V

    .line 63
    .line 64
    .line 65
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    return-object v0
.end method

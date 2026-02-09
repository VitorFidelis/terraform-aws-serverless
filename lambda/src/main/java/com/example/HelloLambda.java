package com.example;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;

public class HelloLambda implements RequestHandler<Object, String> {

    @Override
    public String handleRequest(Object input, Context context) {
        System.out.println("Hello World from Lambda 🚀");
        return "Hello World";
    }
}

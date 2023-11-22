import NiceModal from "@ebay/nice-modal-react";
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import { Toaster } from "react-hot-toast";
import { createBrowserRouter, RouterProvider } from "react-router-dom";
import { QueryParamProvider } from "use-query-params";
import { ReactRouter6Adapter } from "use-query-params/adapters/react-router-6";

import { Layout } from "./components";

const router = createBrowserRouter([
  {
    path: "/",
    index: true,
    element: (
      <QueryParamProvider adapter={ReactRouter6Adapter}>
        <Layout />
      </QueryParamProvider>
    ),
  },
]);

const queryClient = new QueryClient({
  defaultOptions: {
    queries: {
      retry: false,
    },
  },
});

const App = () => {
  return (
    <QueryClientProvider client={queryClient}>
      <NiceModal.Provider>
        <RouterProvider router={router} />
        <Toaster />
      </NiceModal.Provider>
    </QueryClientProvider>
  );
};

export { App };
